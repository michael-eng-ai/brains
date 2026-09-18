# Install the "brains" integration into Claude Code and Codex user config on Windows.
# Idempotent. Requires no admin rights: only writes under $HOME.
#
# Usage (PowerShell 5.1 or 7):
#   Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
#   & "$HOME\brains\install.ps1"
# Env overrides: CLAUDE_CONFIG_DIR (default ~\.claude), CODEX_HOME (default ~\.codex)

$ErrorActionPreference = "Stop"

$BrainsDir = $PSScriptRoot
$BrainsDirSlash = $BrainsDir.Replace("\", "/")
$ClaudeHome = if ($env:CLAUDE_CONFIG_DIR) { $env:CLAUDE_CONFIG_DIR } else { Join-Path $HOME ".claude" }
$CodexHome = if ($env:CODEX_HOME) { $env:CODEX_HOME } else { Join-Path $HOME ".codex" }
$Utf8NoBom = New-Object System.Text.UTF8Encoding($false)
$BlockPattern = '(?s)\r?\n*<!-- brains:start -->.*?<!-- brains:end -->\r?\n?'

function Write-Utf8NoBom([string]$Path, [string]$Content) {
    [System.IO.File]::WriteAllText($Path, $Content, $Utf8NoBom)
}

function Get-RenderedBlock([string]$TemplatePath) {
    $text = [System.IO.File]::ReadAllText($TemplatePath)
    return $text.Replace("{{BRAINS_DIR}}", $BrainsDirSlash)
}

# Replace (or append) the block delimited by the brains markers in a file.
function Update-Block([string]$TargetFile, [string]$BlockFile) {
    $parent = Split-Path -Parent $TargetFile
    if (-not (Test-Path $parent)) { New-Item -ItemType Directory -Path $parent -Force | Out-Null }
    $existing = ""
    if (Test-Path $TargetFile) { $existing = [System.IO.File]::ReadAllText($TargetFile) }
    $stripped = [regex]::Replace($existing, $BlockPattern, "")
    $content = $stripped.TrimEnd() + "`n`n" + (Get-RenderedBlock $BlockFile)
    Write-Utf8NoBom $TargetFile $content
    Write-Host "updated: $TargetFile"
}

function Install-Skill([string]$ToolHome) {
    $dest = Join-Path $ToolHome "skills\brain"
    if (Test-Path $dest) { Remove-Item -Recurse -Force $dest }
    New-Item -ItemType Directory -Path $dest -Force | Out-Null
    Copy-Item -Path (Join-Path $BrainsDir "_skills\brain\*") -Destination $dest -Recurse -Force
    Write-Host "installed skill: $dest"
}

Update-Block (Join-Path $ClaudeHome "CLAUDE.md") (Join-Path $BrainsDir "_global\claude.block.md")
Install-Skill $ClaudeHome

Update-Block (Join-Path $CodexHome "AGENTS.md") (Join-Path $BrainsDir "_global\codex.block.md")
Install-Skill $CodexHome

Write-Host "brains installed from $BrainsDir"
Write-Host "next: cd <project>; & `"$BrainsDir\link.ps1`" -ProjectId <project-id>"
