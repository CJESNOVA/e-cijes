# IMPORTATION SUPABASE STORAGE - GUIDE D'UTILISATION

## Commande créée : ImportSupabaseStorage

### Description
Cette commande permet d'importer tous les fichiers depuis un ZIP d'exportation vers un nouveau Supabase Storage.

### Prérequis
1. Avoir exporté les fichiers avec la commande `supabase:export-storage`
2. Configurer les variables d'environnement pour le nouveau Supabase

### Configuration requise dans .env

Ajoutez ces variables pour le NOUVEAU Supabase :

```env
# Nouveau Supabase (cible)
NEW_SUPABASE_URL=https://votre-nouveau-supabase.supabase.co
NEW_SUPABASE_SERVICE_ROLE_KEY=votre_service_role_key
NEW_SUPABASE_STORAGE_BUCKET=ecijes-bucket  # optionnel, défaut: ecijes-bucket

# Ancien Supabase (source - doit déjà exister)
SUPABASE_URL=https://ancien-supabase.supabase.co
SUPABASE_SERVICE_ROLE_KEY=ancien_service_role_key
SUPABASE_STORAGE_BUCKET=ecijes-bucket
```

### Utilisation

#### 1. Importer le dernier ZIP automatiquement
```bash
php artisan supabase:import-storage
```
La commande cherchera automatiquement le fichier ZIP le plus récent :
1. **D'abord dans la racine du projet** (`c:\xampp\htdocs\cijet\`)
2. **Puis dans `storage/app/storage/`** si rien trouvé dans la racine

#### 2. Importer un fichier ZIP spécifique
```bash
# Fichier dans la racine du projet
php artisan supabase:import-storage mon_export.zip

# Fichier dans storage/
php artisan supabase:import-storage supabase_storage_2024-03-18_14-30-00_mon_export.zip
```

### Fonctionnalités

#### ✅ Automatique
- Détecte le ZIP le plus récent si aucun fichier n'est spécifié
- **Recherche prioritairement dans la racine du projet**
- **Recherche ensuite dans `storage/app/storage/`**
- Utilise directement le fichier local si trouvé dans la racine
- Télécharge le ZIP depuis l'ancien Supabase si nécessaire
- Extrait et importe tous les fichiers
- Affiche une barre de progression
- Gestion optimisée de la mémoire

#### ✅ Sécurité
- Ignore les fichiers système (.DS_Store, __MACOSX/)
- Ignore les dossiers de sauvegarde (storage/) pour éviter les boucles
- Limite la taille des fichiers à 10MB
- Pause entre les uploads pour éviter la surcharge

#### ✅ Rapport détaillé
- Nombre de fichiers importés
- Fichiers ignorés et en erreur
- Taille totale transférée
- Taux de réussite

### Workflow complet

1. **Exporter depuis l'ancien Supabase :**
   ```bash
   php artisan supabase:export-storage mon_export
   ```

2. **Configurer le nouveau Supabase dans .env :**
   ```env
   NEW_SUPABASE_URL=https://nouveau-supabase.supabase.co
   NEW_SUPABASE_SERVICE_ROLE_KEY=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...
   ```

3. **Importer vers le nouveau Supabase :**
   ```bash
   php artisan supabase:import-storage
   ```

### Exemple de sortie

```
🚀 Importation vers le nouveau Supabase Storage...
📁 Fichier ZIP : mon_export.zip
� Fichier trouvé dans la racine du projet : mon_export.zip
📊 Taille : 2.5 MB
📦 Analyse du ZIP...
📊 Fichiers dans le ZIP : 150

 150/150 [▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓] 100%

📊 RÉSUMÉ DE L'IMPORTATION :
✅ Fichiers importés : 142
⏭️  Fichiers ignorés : 5
❌ Fichiers en erreur : 3
📊 Total traités : 150/150
📦 Taille totale : 2.3 MB
🎯 Taux de réussite : 97.92%
✅ Importation terminée avec succès !
```

### Notes importantes

- **Mémoire optimisée** : Libération automatique de la mémoire tous les 20 fichiers
- **Reprise sur erreur** : Si un fichier échoue, l'importation continue
- **Pause système** : 25ms entre chaque upload pour ne pas surcharger le serveur
- **Taille limite** : 10MB par fichier maximum

### Dépannage

#### ❌ "Aucun fichier ZIP trouvé"
- Vérifiez que vous avez bien exporté avec `supabase:export-storage`
- Le ZIP doit être dans la racine du projet OU dans `storage/app/storage/`
- Vérifiez les chemins affichés dans le message d'erreur

#### ❌ "Configuration du nouveau Supabase manquante"
- Ajoutez `NEW_SUPABASE_URL` et `NEW_SUPABASE_SERVICE_ROLE_KEY` dans votre .env

#### ❌ "Impossible de télécharger le ZIP"
- Vérifiez que l'ancien Supabase est accessible
- Vérifiez que le nom du fichier est correct

---

**Créé le :** 18 mars 2026  
**Auteur :** Assistant Cascade  
**Version :** 1.0
