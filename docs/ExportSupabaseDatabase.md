# ExportSupabaseDatabase

Ce script permet d'exporter la base de données Supabase vers un fichier SQL et de le stocker dans Supabase Storage.

## Installation

1. Le script est déjà enregistré automatiquement dans Laravel 11 via l'auto-détection des commandes
2. Configurez les variables d'environnement dans votre fichier `.env` :

```env
# Configuration de la base de données Supabase
SUPABASE_DB_HOST=127.0.0.1
SUPABASE_DB_PORT=54322
SUPABASE_DB_DATABASE=postgres
SUPABASE_DB_USERNAME=postgres
SUPABASE_DB_PASSWORD=votre_mot_de_passe

# Configuration Supabase Storage (déjà configurée)
SUPABASE_URL=http://127.0.0.1:54321
SUPABASE_SERVICE_ROLE_KEY=votre_clé_service
SUPABASE_BUCKET=ecijes-bucket
```

## Utilisation

### Exportation avec nom de fichier personnalisé
```bash
php artisan supabase:export mon_fichier.sql
```

### Exportation avec nom de fichier par défaut
```bash
php artisan supabase:export
```

Le nom de fichier par défaut sera : `supabase_backup_YYYY-MM-DD_HH-mm-ss.sql`

## Fonctionnalités

- **Export via pg_dump** : Utilise `pg_dump` pour un export complet et optimisé
- **Export via API REST** : Alternative si `pg_dump` n'est pas disponible (recommandé)
- **Détection automatique des tables** : Scan les tables communes du projet
- **Stockage Supabase Storage** : Upload automatique vers Supabase Storage
- **Fallback local** : Sauvegarde locale si le stockage distant échoue
- **Formatage des tailles** : Affichage lisible de la taille du fichier

## Fonctionnement

### Méthode 1: pg_dump (recommandé si installé)
- Utilise l'outil PostgreSQL `pg_dump` pour un export complet
- Nécessite PostgreSQL client tools installé sur le système

### Méthode 2: API REST (alternative)
- Utilise l'API REST Supabase pour exporter les données
- Détecte automatiquement les tables disponibles
- Génère le SQL avec structure et données
- **Ne nécessite aucune extension PHP PostgreSQL**

## Tables exportées

Le script scan automatiquement les tables suivantes :
- `users`, `profiles`, `articles`, `categories`, `tags`, `comments`
- `settings`, `logs`, `sessions`, `notifications`, `files`
- `products`, `orders`, `customers`, `invoices`, `payments`
- `migrations`, `failed_jobs`, `jobs`, `cache`, `cache_locks`
- `telescope_entries`, `telescope_monitoring`

Seules les tables existantes et accessibles seront exportées.

## Structure du fichier exporté

- Structure complète des tables (CREATE TABLE)
- Données de toutes les tables (INSERT statements)
- Configuration PostgreSQL appropriée
- Encodage UTF-8
- Gestion des types PostgreSQL (varchar, timestamp, json, etc.)

## Emplacements de stockage

### Production (URL distante)
```
https://votre-projet.supabase.co/storage/v1/object/votre-bucket/fichier.sql
```

### Local (URL 127.0.0.1)
```
http://127.0.0.1:54321/storage/v1/object/ecijes-bucket/supabase/fichier.sql
```

## Exemple de sortie

```
Exportation de la base de données Supabase...
🔄 pg_dump non disponible, utilisation de API REST...
🔗 Connexion à Supabase REST API...
⚠️  URL Supabase locale détectée !
📍  Pour le stockage Supabase, utilisez l'URL de production : https://votre-projet.supabase.co
🔄  Fallback vers sauvegarde locale...
✅ Sauvegarde dans Supabase Storage (supabase/) réussie !
📁 Fichier : 2026-03-13_14-39-52_test.sql
📊 Taille : 215 B
🔗 URL : http://127.0.0.1:54321/storage/v1/object/ecijes-bucket/supabase/2026-03-13_14-39-52_test.sql
✅ Exportation REST API Supabase réussie !
📁 Fichier : 2026-03-13_14-39-52_test.sql
```

## Prérequis

- **Optionnel** : PostgreSQL client tools (pg_dump) installé sur le système
- **Obligatoire** : Accès à la base de données Supabase
- **Obligatoire** : Configuration Supabase Storage pour l'upload des fichiers
- **Aucune extension PHP PostgreSQL requise** (utilise HTTP Client)

## Dépannage

### Erreur "could not find driver"
- Normal si `pdo_pgsql` n'est pas installé
- Le script utilise automatiquement l'API REST en fallback

### Aucune table trouvée
- Vérifiez que les tables existent dans votre base Supabase
- Vérifiez les permissions de votre SERVICE_ROLE_KEY

### Erreur d'upload
- Le script fait automatiquement un fallback vers le stockage local
- Les fichiers sont stockés dans le dossier `supabase/` du bucket
