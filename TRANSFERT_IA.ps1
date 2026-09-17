# BQOD IA TRANSFUSION - G5 DIAMOND SCRIPT
$destFolder = "$PSScriptRoot\mobile\models"
$destFile = "$destFolder\gemma-2b-it.gguf"

if (!(Test-Path $destFolder)) {
    New-Item -ItemType Directory -Path $destFolder | Out-Null
    Write-Host "[OK] Dossier 'models' cree dans le projet BPA." -ForegroundColor Cyan
}

$sourceFile = ""

# 1. Lieux potentiels de stockage
$knownPaths = @(
    "d:\bQoD\Production\2026BPA_2026_04_10_G5\mobile\models\gemma-2b-it.gguf",
    "d:\bQoD\Production\SCANDEVIS_2026_04_13_G5\mobile\models\gemma-2b-it.gguf",
    "e:\PJS\bpa\mobile\models\gemma-2b-it.gguf",
    "d:\bQoD\Production\SCANDEVIS_2026_04_13_G5\assets\models\gemma-2b-it.gguf",
    "e:\PJS\bpa\assets\models\gemma-2b-it.gguf"
)

foreach ($path in $knownPaths) {
    if (Test-Path $path) {
        $sourceFile = $path
        break
    }
}

# 2. Si introuvable, recherche intelligente
if ($sourceFile -eq "") {
    Write-Host "[RECHERCHE] Modele introuvable dans les dossiers habituels. Scan de D: et E: en cours (patientez)..." -ForegroundColor Yellow
    
    $foundD = Get-ChildItem -Path D:\bQoD\Production -Filter "gemma-2b-it.gguf" -Recurse -ErrorAction SilentlyContinue | Select-Object -First 1
    if ($foundD) {
        $sourceFile = $foundD.FullName
    } else {
        $foundE = Get-ChildItem -Path E:\PJS -Filter "gemma-2b-it.gguf" -Recurse -ErrorAction SilentlyContinue | Select-Object -First 1
        if ($foundE) {
            $sourceFile = $foundE.FullName
        }
    }
}

if ($sourceFile -eq "") {
    Write-Host "[ECHEC] Le modele 'gemma-2b-it.gguf' est introuvable." -ForegroundColor Red
    Write-Host "Action: Placez le fichier manuellement dans le dossier $destFolder" -ForegroundColor Gray
} else {
    Write-Host "[OK] Modele detecte : $sourceFile" -ForegroundColor Cyan
    Write-Host "[EN COURS] Transfusion de la conscience IA..." -ForegroundColor Yellow
    
    Copy-Item -Path $sourceFile -Destination $destFile -Force
    
    Write-Host "[SUCCES] Transfusion reussie ! Gemma est active." -ForegroundColor Green
    Write-Host "-> Vous pouvez maintenant cliquer sur le bouton 'ACTIVER GEMMA' dans l'application." -ForegroundColor Magenta
}

Pause
