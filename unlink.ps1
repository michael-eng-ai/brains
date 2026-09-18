# Detach a repository from its brain on Windows: removes the local files written by link.ps1.
# The brain folder itself is kept.
#
# Usage: & "$HOME\brains\unlink.ps1" [-ProjectPath <path>]   (defaults to the current directory)

param([string]$ProjectPath = (Get-Location).Path)

$ErrorActionPreference = "Stop"
$ProjectPath = (Resolve-Path $ProjectPath).Path
$Utf8NoBom = New-Object System.Text.UTF8Encoding($false)
$BlockPattern = '(?s)\r?\n*<!-- brains:start -->.*?<!-- brains:end -->\r?\n?'
$StubSignature = "local stub, not committed"

$brainMarker = Join-Path $ProjectPath ".brain"
if (Test-Path $brainMarker) { Remove-Item $brainMarker; Write-Host "removed: $brainMarker" }

$agentsFile = Join-Path $ProjectPath "AGENTS.md"
if ((Test-Path $agentsFile) -and ((Get-Content $agentsFile -Raw) -match [regex]::Escape($StubSignature))) {
    Remove-Item $agentsFile
    Write-Host "removed stub: $agentsFile"
}

$localFile = Join-Path $ProjectPath "CLAUDE.local.md"
if (Test-Path $localFile) {
    $stripped = [regex]::Replace([System.IO.File]::ReadAllText($localFile), $BlockPattern, "")
    if ($stripped.Trim().Length -gt 0) {
        [System.IO.File]::WriteAllText($localFile, $stripped, $Utf8NoBom)
        Write-Host "removed block from: $localFile"
    } else {
        Remove-Item $localFile
        Write-Host "removed: $localFile"
    }
}

$gitDir = & git -C $ProjectPath rev-parse --absolute-git-dir 2>$null
if ($LASTEXITCODE -eq 0 -and $gitDir) {
    $excludeFile = Join-Path $gitDir "info\exclude"
    if (Test-Path $excludeFile) {
        $kept = Get-Content $excludeFile | Where-Object { $_ -notin @(".brain", "CLAUDE.local.md", "AGENTS.md") }
        [System.IO.File]::WriteAllText($excludeFile, (($kept -join "`n") + "`n"), $Utf8NoBom)
        Write-Host "cleaned: $excludeFile"
    }
}

Write-Host "unlinked: $ProjectPath"
