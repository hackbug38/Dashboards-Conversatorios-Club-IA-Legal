#!/usr/bin/env pwsh
# Script para preparar y subir cambios a GitHub
# Proyecto: Club IA Legal - Dashboards Conversatorios

Write-Host "🚀 Iniciando proceso de git..." -ForegroundColor Green
Write-Host ""

# Verificar si estamos en un repositorio git
if (-not (Test-Path ".git")) {
    Write-Host "⚠️  No se encontró repositorio git local" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "Opciones:" -ForegroundColor Cyan
    Write-Host "1. Inicializar nuevo repositorio git local"
    Write-Host "2. Clonar repositorio desde GitHub"
    Write-Host ""
    
    $option = Read-Host "Selecciona una opción (1 o 2)"
    
    if ($option -eq "1") {
        Write-Host ""
        Write-Host "Inicializando repositorio git..." -ForegroundColor Green
        git init
        
        Write-Host ""
        Write-Host "Agregando archivos..." -ForegroundColor Green
        git add .
        
        Write-Host ""
        Write-Host "Realizando commit inicial..." -ForegroundColor Green
        git commit -m "Initial commit: Add dashboard3 (Cerebros Sintéticos, Derechos Reales) + home page navigation"
        
        Write-Host ""
        Write-Host "URL del repositorio remoto:" -ForegroundColor Cyan
        $repoUrl = Read-Host "Ingresa la URL del repositorio (ej: https://github.com/usuario/repo.git)"
        
        git remote add origin $repoUrl
        
        Write-Host ""
        Write-Host "Empujando cambios a GitHub..." -ForegroundColor Green
        git push -u origin main
    }
    else {
        Write-Host ""
        Write-Host "Ingresa la URL del repositorio a clonar:" -ForegroundColor Cyan
        $repoUrl = Read-Host
        git clone $repoUrl
    }
}
else {
    # Si ya existe repositorio git
    Write-Host "✅ Repositorio git encontrado" -ForegroundColor Green
    Write-Host ""
    
    Write-Host "Estado actual:" -ForegroundColor Cyan
    git status
    
    Write-Host ""
    Write-Host "¿Deseas continuar con el commit y push? (S/N)" -ForegroundColor Yellow
    $confirm = Read-Host
    
    if ($confirm -eq "S" -or $confirm -eq "s") {
        Write-Host ""
        Write-Host "Agregando archivos modificados..." -ForegroundColor Green
        git add .
        
        Write-Host ""
        Write-Host "Commit message:" -ForegroundColor Cyan
        $message = Read-Host "Ingresa el mensaje del commit (o presiona Enter para usar el mensaje por defecto)"
        
        if ([string]::IsNullOrEmpty($message)) {
            $message = "Add dashboard3: Cerebros Sintéticos, Derechos Reales + home page navigation"
        }
        
        Write-Host ""
        Write-Host "Realizando commit..." -ForegroundColor Green
        git commit -m $message
        
        Write-Host ""
        Write-Host "Empujando cambios a GitHub..." -ForegroundColor Green
        git push
        
        Write-Host ""
        Write-Host "✅ Cambios enviados a GitHub exitosamente" -ForegroundColor Green
    }
    else {
        Write-Host "Operación cancelada" -ForegroundColor Yellow
    }
}

Write-Host ""
Write-Host "================================================" -ForegroundColor Green
Write-Host "Proceso completado" -ForegroundColor Green
Write-Host "================================================" -ForegroundColor Green
