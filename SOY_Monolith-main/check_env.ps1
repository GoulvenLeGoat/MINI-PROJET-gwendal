# Liste des variables d'environnement requises
$requiredEnvVars = @("DB_HOST", "DB_PORT", "DB_USER", "DB_PASSWORD", "API_SECRET_KEY")

# Vérification de chaque variable
foreach ($var in $requiredEnvVars) {
    if (-not (Test-Path env:$var)) {
        Write-Host "Erreur : La variable d'environnement $var est manquante." -ForegroundColor Red
        exit 1
    }
}

Write-Host "Toutes les variables d'environnement requises sont définies." -ForegroundColor Green
