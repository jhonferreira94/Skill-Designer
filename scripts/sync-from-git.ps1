# Faz git pull e copia o repositorio -> skill local.
# Uso: pwsh ./scripts/sync-from-git.ps1
$ErrorActionPreference = "Stop"

$repoRoot = Split-Path -Parent $PSScriptRoot
$skillLocal = Join-Path $env:USERPROFILE ".copilot\skills\designer"

Push-Location $repoRoot
try {
    Write-Host "Atualizando repositorio (git pull)..." -ForegroundColor Cyan
    git pull
} finally {
    Pop-Location
}

if (-not (Test-Path $skillLocal)) {
    New-Item -ItemType Directory -Path $skillLocal | Out-Null
}

Write-Host "Copiando repositorio -> skill local..." -ForegroundColor Cyan
Copy-Item -Path (Join-Path $repoRoot "SKILL.md") -Destination $skillLocal -Force

$refDst = Join-Path $skillLocal "references"
if (-not (Test-Path $refDst)) { New-Item -ItemType Directory -Path $refDst | Out-Null }
Copy-Item -Path (Join-Path $repoRoot "references\*") -Destination $refDst -Recurse -Force

$rulesDst = Join-Path $skillLocal "rules"
if (-not (Test-Path $rulesDst)) { New-Item -ItemType Directory -Path $rulesDst | Out-Null }
if (Test-Path (Join-Path $repoRoot "rules")) {
    Copy-Item -Path (Join-Path $repoRoot "rules\*") -Destination $rulesDst -Recurse -Force
}

Write-Host "Skill local atualizada em: $skillLocal" -ForegroundColor Green
