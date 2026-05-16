#!/usr/bin/env pwsh

# Equivalente a `set -e` en bash: fallar en errores de cmdlets y comprobar códigos de salida de ejecutables
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

function Run-External {
    param(
        [string]$Command,
        [string[]]$Arguments = @()
    )
    Write-Host "Running: $Command $($Arguments -join ' ')"
    & $Command @Arguments
    $code = $LASTEXITCODE
    if ($code -ne 0) {
        Write-Error "$Command exited with code $code"
        exit $code
    }
}

try {
    # Construir
    Run-External -Command 'npm' -Arguments @('run','build')

    # Eliminar datos de nubes de puntos del dist antes de desplegar (demasiado grandes para SWA)
    $pointcloudsDir = Join-Path $PSScriptRoot 'dist\assets\pointclouds'
    if (Test-Path $pointcloudsDir) {
        Write-Host "Removing point cloud data from dist (excluded from deploy)..."
        Remove-Item -Recurse -Force $pointcloudsDir
    }

    # Desplegar (swa CLI)
    Run-External -Command 'swa' -Arguments @('deploy','--env','production')

    Write-Host "Deploy completed successfully."
    exit 0
} catch {
    Write-Error "Unhandled error: $($_.Exception.Message)"
    if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
    exit 1
}
