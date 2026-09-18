# Attach a repository to its brain folder on Windows. No symlinks, no admin rights.
#
# Usage: & "$HOME\brains\link.ps1" -ProjectId <project-id> [-ProjectPath <path>]
#        (ProjectPath defaults to the current directory)
#
# Same behaviour as link.sh: creates the brain folder from _template if missing, writes .brain,
# writes an AGENTS.md stub only if the repo has none, upserts the block in CLAUDE.local.md and
# adds those files to .git\info\exclude.

param(
    [Parameter(Mandatory = $true)] [string]$ProjectId,
    [string]$ProjectPath = (Get-Location).Path
)

$ErrorActionPreference = "Stop"

$BrainsDir = $PSScriptRoot
$ProjectPath = (Resolve-Path $ProjectPath).Path
$BrainPath = Join-Path $BrainsDir $ProjectId
$BrainPathSlash = $BrainPath.Replace("\", "/")
$Today = Get-Date -Format "yyyy-MM-dd"
$Utf8NoBom = New-Object System.Text.UTF8Encoding($false)
$BlockPattern = '(?s)\r?\n*<!-- brains:start -->.*?<!-- brains:end -->\r?\n?'
$StubSignature = "local stub, not committed"

function Write-Utf8NoBom([string]$Path, [string]$Content) {
    [System.IO.File]::WriteAllText($Path, $Content, $Utf8NoBom)
}

function Get-Rendered([string]$TemplatePath) {
    $text = [System.IO.File]::ReadAllText($TemplatePath)
    return $text.Replace("{{BRAIN_PATH}}", $BrainPathSlash).Replace("{{PROJECT_ID}}", $ProjectId).Replace("{{DATE}}", $Today)
}

# 1. Brain folder from template.
$templateDir = Join-Path $BrainsDir "_template"
if (-not (Test-Path $BrainPath)) {
    Get-ChildItem -Path $templateDir -Recurse -File | ForEach-Object {
        $relative = $_.FullName.Substring($templateDir.Length + 1)
        $target = Join-Path $BrainPath $relative
        $targetDir = Split-Path -Parent $target
        if (-not (Test-Path $targetDir)) { New-Item -ItemType Directory -Path $targetDir -Force | Out-Null }
        Write-Utf8NoBom $target (Get-Rendered $_.FullName)
    }
    Write-Host "created brain: $BrainPath"
} else {
    Write-Host "brain exists: $BrainPath"
}

# 2. Project id marker.
$brainMarker = Join-Path $ProjectPath ".brain"
Write-Utf8NoBom $brainMarker "$ProjectId`n"
Write-Host "wrote: $brainMarker"

# 3. AGENTS.md stub only when the repo has none.
$agentsFile = Join-Path $ProjectPath "AGENTS.md"
$createdAgentsStub = $false
if (-not (Test-Path $agentsFile)) {
    Write-Utf8NoBom $agentsFile (Get-Rendered (Join-Path $BrainsDir "_stubs\AGENTS.stub.md"))
    $createdAgentsStub = $true
    Write-Host "created stub: $agentsFile"
} elseif ((Get-Content $agentsFile -Raw) -match [regex]::Escape($StubSignature)) {
    Write-Utf8NoBom $agentsFile (Get-Rendered (Join-Path $BrainsDir "_stubs\AGENTS.stub.md"))
    $createdAgentsStub = $true
    Write-Host "refreshed stub: $agentsFile"
} else {
    Write-Host "kept team file: $agentsFile (global ~/.codex/AGENTS.md block handles discovery)"
}

# 4. CLAUDE.local.md block.
$localFile = Join-Path $ProjectPath "CLAUDE.local.md"
$existing = ""
if (Test-Path $localFile) { $existing = [System.IO.File]::ReadAllText($localFile) }
$stripped = [regex]::Replace($existing, $BlockPattern, "")
$block = Get-Rendered (Join-Path $BrainsDir "_stubs\CLAUDE.local.stub.md")
$content = if ($stripped.Trim().Length -gt 0) { $stripped.TrimEnd() + "`n`n" + $block } else { $block }
Write-Utf8NoBom $localFile $content
Write-Host "updated: $localFile"

# 5. Keep local files out of the team repository.
$gitDir = & git -C $ProjectPath rev-parse --absolute-git-dir 2>$null
if ($LASTEXITCODE -eq 0 -and $gitDir) {
    $excludeFile = Join-Path $gitDir "info\exclude"
    $excludeDir = Split-Path -Parent $excludeFile
    if (-not (Test-Path $excludeDir)) { New-Item -ItemType Directory -Path $excludeDir -Force | Out-Null }
    if (-not (Test-Path $excludeFile)) { Write-Utf8NoBom $excludeFile "" }
    $entries = @(".brain", "CLAUDE.local.md")
    if ($createdAgentsStub) { $entries += "AGENTS.md" }
    $current = Get-Content $excludeFile -ErrorAction SilentlyContinue
    foreach ($entry in $entries) {
        if ($current -notcontains $entry) { Add-Content -Path $excludeFile -Value $entry -Encoding UTF8 }
    }
    Write-Host "updated: $excludeFile"
} else {
    Write-Host "not a git repository: skipped .git\info\exclude"
}

Write-Host "linked: $ProjectPath -> $BrainPath"
Write-Host "next: open the project in Claude Code or Codex and ask for 'brain init' (first time) or 'brain resume'"
