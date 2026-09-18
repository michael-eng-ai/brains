# Graph lint and catalog for one brain on Windows. Wikilinks [[name]] are the edges of the graph.
#
# Usage: & "$HOME\brains\graph.ps1" -ProjectId <id> [-Mode check|catalog|all]   (default: all)
# Exit code 1 when broken links or duplicate names exist, so an AI can act on it.

param(
    [Parameter(Mandatory = $true)] [string]$ProjectId,
    [ValidateSet("check", "catalog", "all")] [string]$Mode = "all"
)

$ErrorActionPreference = "Stop"
$BrainsDir = $PSScriptRoot
$BrainPath = Join-Path $BrainsDir $ProjectId
if (-not (Test-Path $BrainPath)) { Write-Host "brain not found: $BrainPath"; exit 1 }
$Utf8NoBom = New-Object System.Text.UTF8Encoding($false)
$Structural = @("index.md", "AGENTS.md", "catalog.md")

# README.md files are folder guides with template placeholders: not nodes of the graph.
$files = Get-ChildItem -Path $BrainPath -Recurse -Filter *.md |
    Where-Object { $_.Name -ne "catalog.md" -and $_.Name -ne "README.md" } |
    Sort-Object FullName

# Drop fenced code blocks, HTML comments and inline code before extracting links.
function Get-LinkableText([string]$Text) {
    $t = [regex]::Replace($Text, '(?s)```.*?```', "")
    $t = [regex]::Replace($t, '(?s)<!--.*?-->', "")
    return [regex]::Replace($t, '`[^`\r\n]*`', "")
}

$notes = @()
foreach ($f in $files) {
    $relative = $f.FullName.Substring($BrainPath.Length + 1).Replace("\", "/")
    $content = [System.IO.File]::ReadAllText($f.FullName)
    $targets = [regex]::Matches((Get-LinkableText $content), '\[\[([^\]]+)\]\]') |
        ForEach-Object { ($_.Groups[1].Value -split '[|#]')[0].Trim() } |
        Where-Object { $_ -and ($_ -notmatch '/') } |
        Sort-Object -Unique
    $fm = @{}
    $lines = $content -split "`r?`n"
    if ($lines.Length -gt 0 -and $lines[0] -eq "---") {
        for ($i = 1; $i -lt $lines.Length -and $lines[$i] -ne "---"; $i++) {
            if ($lines[$i] -match '^([a-z_]+):\s*(.*)$') { $fm[$matches[1]] = $matches[2] }
        }
    }
    $notes += [pscustomobject]@{
        Name = [System.IO.Path]::GetFileNameWithoutExtension($f.Name)
        File = $relative
        Base = $f.Name
        Targets = @($targets)
        HasFrontmatter = ($lines.Length -gt 0 -and $lines[0] -eq "---")
        HasConexoes = ($content -match '(?m)^## Conexoes')
        Tipo = $fm["tipo"]; Resumo = $fm["resumo"]; Tags = $fm["tags"]
    }
}

$names = @{}
foreach ($n in $notes) { $names[$n.Name] = $names[$n.Name] + 1 }
$known = @{}
foreach ($k in $names.Keys) { $known[$k] = $true }
$known["catalog"] = $true   # catalog.md is generated, so [[catalog]] is always a valid target
$incoming = @{}
foreach ($n in $notes) { foreach ($t in $n.Targets) { $incoming[$t] = $incoming[$t] + 1 } }

function Invoke-Check {
    $broken = 0; $orphans = 0; $nofm = 0; $nocx = 0; $problems = 0
    $linkCount = ($notes | ForEach-Object { $_.Targets.Count } | Measure-Object -Sum).Sum
    Write-Host "== graph check: $ProjectId ($($notes.Count) notes, $linkCount links) =="

    $dups = $names.Keys | Where-Object { $names[$_] -gt 1 }
    if ($dups) {
        Write-Host "-- duplicate note names (wikilinks become ambiguous):"
        foreach ($d in $dups) { $notes | Where-Object { $_.Name -eq $d } | ForEach-Object { Write-Host "   $($_.File)" } }
        $problems = 1
    }

    Write-Host "-- broken links:"
    foreach ($n in $notes) {
        foreach ($t in $n.Targets) {
            if (-not $known.ContainsKey($t)) { Write-Host "   $($n.File) -> [[$t]]"; $broken++ }
        }
    }
    if ($broken -eq 0) { Write-Host "   none" }

    Write-Host "-- orphan notes (no incoming link):"
    foreach ($n in $notes) {
        if ($Structural -contains $n.Base) { continue }
        if (-not $incoming.ContainsKey($n.Name)) { Write-Host "   $($n.File)"; $orphans++ }
    }
    if ($orphans -eq 0) { Write-Host "   none" }

    Write-Host "-- notes without frontmatter:"
    foreach ($n in $notes) {
        if (-not $n.HasFrontmatter) { Write-Host "   $($n.File)"; $nofm++ }
    }
    if ($nofm -eq 0) { Write-Host "   none" }

    Write-Host "-- notes without '## Conexoes':"
    foreach ($n in $notes) {
        if (-not $n.HasConexoes) { Write-Host "   $($n.File)"; $nocx++ }
    }
    if ($nocx -eq 0) { Write-Host "   none" }

    Write-Host "== summary: broken=$broken orphans=$orphans no_frontmatter=$nofm no_conexoes=$nocx duplicates=$(@($dups).Count)"
    if ($broken -gt 0) { $problems = 1 }
    return $problems
}

function Invoke-Catalog {
    $out = Join-Path $BrainPath "catalog.md"
    $today = Get-Date -Format "yyyy-MM-dd"
    $sb = New-Object System.Text.StringBuilder
    [void]$sb.AppendLine("---")
    [void]$sb.AppendLine("tipo: catalogo")
    [void]$sb.AppendLine("projeto: $ProjectId")
    [void]$sb.AppendLine("resumo: Catalogo gerado por graph.ps1. Uma linha por nota. Nao editar a mao.")
    [void]$sb.AppendLine("tags: [$ProjectId, catalogo]")
    [void]$sb.AppendLine("atualizado: $today")
    [void]$sb.AppendLine("---")
    [void]$sb.AppendLine("")
    [void]$sb.AppendLine("# Catalogo: $ProjectId")
    [void]$sb.AppendLine("")
    [void]$sb.AppendLine("Gerado por ``graph.ps1 -ProjectId $ProjectId -Mode catalog``. Use para decidir o que ler; abra a nota pelo caminho.")
    [void]$sb.AppendLine("")
    [void]$sb.AppendLine("| Nota | Tipo | Resumo | Tags | In | Out |")
    [void]$sb.AppendLine("| --- | --- | --- | --- | --- | --- |")
    foreach ($n in $notes) {
        $in = if ($incoming.ContainsKey($n.Name)) { $incoming[$n.Name] } else { 0 }
        $resumo = if ($n.Resumo) { $n.Resumo.Replace("|", "\|") } else { "" }
        [void]$sb.AppendLine("| [[$($n.Name)]] ($($n.File)) | $($n.Tipo) | $resumo | $($n.Tags) | $in | $($n.Targets.Count) |")
    }
    [void]$sb.AppendLine("")
    [void]$sb.AppendLine("## Conexoes")
    [void]$sb.AppendLine("- [[index]]")
    [System.IO.File]::WriteAllText($out, $sb.ToString(), $Utf8NoBom)
    Write-Host "catalog written: $out"
}

$status = 0
switch ($Mode) {
    "check"   { $status = Invoke-Check }
    "catalog" { Invoke-Catalog }
    "all"     { $status = Invoke-Check; Invoke-Catalog }
}
exit $status
