# Correction des migrations de modification de colonnes

## Problème identifié

La migration `2026_02_05_203310_update_diagnosticorientations_table.php` tentait de renommer une colonne `diagnosticstatut_id` qui n'existait pas, causant une erreur "Trying to access array offset on value of type null".

## Solution appliquée

Ajout de vérifications complètes dans la migration :

```php
// Vérifier si la table existe
if (Schema::hasTable('diagnosticorientations')) {
    // Vérifier si la colonne à renommer existe
    if (Schema::hasColumn('diagnosticorientations', 'diagnosticstatut_id')) {
        $table->renameColumn('diagnosticstatut_id', 'ancien_diagnosticstatut_id');
    }
    
    // Vérifier si la nouvelle colonne n'existe pas déjà
    if (!Schema::hasColumn('diagnosticorientations', 'diagnosticblocstatut_id')) {
        // Ajouter la colonne et la clé étrangère
    }
}
```

## Migrations corrigées

### 2026_02_05_203310_update_diagnosticorientations_table.php
- ✅ Ajout de vérifications pour l'existence de la table
- ✅ Ajout de vérifications pour l'existence des colonnes
- ✅ Gestion des erreurs dans la méthode down() avec try-catch

### Autres migrations de 2026_02_05
- ✅ 203320_cleanup_diagnosticorientations_table.php (déjà correcte)
- ✅ 203340_cleanup_diagnosticstatutregles_table.php (déjà correcte)

## Pattern pour les migrations de modification

Pour les migrations qui modifient des structures existantes :

```php
public function up(): void
{
    Schema::table('table_name', function (Blueprint $table) {
        if (Schema::hasTable('table_name')) {
            if (Schema::hasColumn('table_name', 'old_column')) {
                $table->renameColumn('old_column', 'new_column');
            }
            
            if (!Schema::hasColumn('table_name', 'new_column')) {
                $table->type('new_column');
            }
        }
    });
}

public function down(): void
{
    Schema::table('table_name', function (Blueprint $table) {
        if (Schema::hasTable('table_name')) {
            try {
                $table->dropForeign('foreign_key_name');
            } catch (\Exception $e) {
                // Ignorer si la clé n'existe pas
            }
            
            if (Schema::hasColumn('table_name', 'column_to_drop')) {
                $table->dropColumn('column_to_drop');
            }
        }
    });
}
```

## Instructions

Lancer les migrations :
```bash
php artisan migrate
```

Si des erreurs persistent, vérifier les logs pour identifier les migrations problématiques restantes.
