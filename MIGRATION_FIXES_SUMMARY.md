# Résumé des corrections de migrations

## Migrations corrigées pour éviter les erreurs

### 1. Colonnes dupliquées
- **2025_08_24_170000_add_diagnostic_id_to_accompagnements.php**
  - Ajout de `Schema::hasColumn()` avant création
  
- **2026_03_03_144000_add_plantemplate_id_to_plans_table.php**
  - Ajout de `Schema::hasColumn()` avant création
  
- **2026_03_03_143000_add_diagnostictype_id_to_diagnosticstatutregles_table.php**
  - Ajout de `Schema::hasColumn()` avant création

### 2. Tables dupliquées
- **2025_08_24_200000_create_missing_diagnosticmodules_table.php**
  - Ajout de `Schema::hasTable()` avant création
  
- **2025_08_24_210000_create_missing_diagnosticblocstatuts_table.php**
  - Ajout de `Schema::hasTable()` avant création

### 3. Pattern de correction

Pour les colonnes :
```php
if (!Schema::hasColumn('table_name', 'column_name')) {
    // Créer la colonne
}
```

Pour les tables :
```php
if (!Schema::hasTable('table_name')) {
    // Créer la table
}
```

Pour les suppressions :
```php
if (Schema::hasColumn('table_name', 'column_name')) {
    // Supprimer la colonne
}

if (Schema::hasTable('table_name')) {
    // Supprimer la table
}
```

### 4. Instructions pour relancer les migrations

```bash
php artisan migrate
```

Les migrations ignoreront maintenant les éléments qui existent déjà et créeront seulement ceux qui manquent.

### 5. Si l'erreur persiste

Si vous rencontre toujours des erreurs, vous pouvez :

1. Marquer la migration comme exécutée :
   ```bash
   php artisan migrate:reset --step=1
   ```

2. Ou supprimer manuellement l'entrée de la table `migrations` :
   ```sql
   DELETE FROM migrations WHERE migration = '2025_08_24_170000_add_diagnostic_id_to_accompagnements';
   ```

3. Puis relancer :
   ```bash
   php artisan migrate
   ```
