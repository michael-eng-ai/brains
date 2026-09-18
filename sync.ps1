# Commit local brain changes, pull with rebase, push. Safe to run repeatedly.
#
# Usage: & "$HOME\brains\sync.ps1" ["commit message"]
# Exit codes: 0 synced or committed locally, 1 conflict or push failure (publication pending).

param([string]$Message = "")

$ErrorActionPreference = "Continue"
$BrainsDir = $PSScriptRoot
Set-Location $BrainsDir

& git rev-parse --is-inside-work-tree 2>$null | Out-Null
if ($LASTEXITCODE -ne 0) {
    Write-Host "not a git repository: run 'git init' in $BrainsDir first"
    exit 1
}

$status = & git status --porcelain
if ($status) {
    if (-not $Message) { $Message = "docs: brain update " + (Get-Date -Format "yyyy-MM-ddTHH:mm") }
    & git add -A
    & git commit -q -m $Message | Out-Null
    Write-Host "committed locally"
} else {
    Write-Host "nothing to commit"
}

& git remote get-url origin 2>$null | Out-Null
if ($LASTEXITCODE -ne 0) {
    Write-Host "no remote configured: publication pending (git remote add origin <url>)"
    exit 0
}

& git pull --rebase --quiet
if ($LASTEXITCODE -ne 0) {
    & git rebase --abort 2>$null | Out-Null
    Write-Host "pull failed (conflict or offline): publication pending, resolve manually in $BrainsDir"
    exit 1
}

& git push --quiet
if ($LASTEXITCODE -eq 0) {
    Write-Host "synced with origin"
    exit 0
} else {
    Write-Host "push failed: publication pending"
    exit 1
}
