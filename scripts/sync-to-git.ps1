# Copia a skill local -> repositorio, commita e faz push.
# Uso: pwsh ./scripts/sync-to-git.ps1 [-Message "mensagem do commit"]
param(
    [string]$Message = "chore: sync skill from local"
)

$ErrorActionPreference = "Stop"

$repoRoot = Split-Path -Parent $PSScriptRoot
$skillLocal = Join-Path $env:USERPROFILE ".copilot\skills\designer"

if (-not (Test-Path $skillLocal)) {
    throw "Skill local nao encontrada em: $skillLocal"
}

Write-Host "Copiando skill local -> repositorio..." -ForegroundColor Cyan
Copy-Item -Path (Join-Path $skillLocal "SKILL.md") -Destination $repoRoot -Force

$refDst = Join-Path $repoRoot "references"
if (-not (Test-Path $refDst)) { New-Item -ItemType Directory -Path $refDst | Out-Null }
Copy-Item -Path (Join-Path $skillLocal "references\*") -Destination $refDst -Recurse -Force

Push-Location $repoRoot
try {
    git add -A
    if (git status --porcelain) {
        git commit -m $Message
        git push
        Write-Host "Push concluido." -ForegroundColor Green
    } else {
        Write-Host "Nada para commitar. Repositorio ja esta atualizado." -ForegroundColor Yellow
    }
} finally {
    Pop-Location
}
