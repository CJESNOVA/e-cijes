#!/bin/bash

echo "Test des migrations Laravel..."

# Vérifier si nous sommes dans le bon répertoire
if [ ! -f "artisan" ]; then
    echo "Erreur: artisan non trouvé. Veuillez vous placer dans le répertoire racine de Laravel."
    exit 1
fi

# Tester la migration
echo "Lancement de php artisan migrate..."
php artisan migrate --force

echo "Migration terminée."
