# Correction des erreurs de contraintes de clés étrangères

## Problème identifié

La migration `2026_02_07_110450_update_diagnosticorientations_structure.php` a échoué avec :
```
SQLSTATE[23000]: Integrity constraint violation: 1452 Cannot add or update a child row: a foreign key constraint fails
```

**Cause** : Il y avait des données dans `diagnosticorientations` qui référençaient des `diagnosticstatut_id` qui n'existent plus dans la table `diagnosticstatuts`.

## Solution appliquée

### 1. Rendre la colonne nullable
```php
$table->unsignedBigInteger('diagnosticstatut_id')->nullable()->after('diagnosticmodule_id');
```

### 2. Nettoyer les données invalides avant d'ajouter la clé étrangère
```php
// Nettoyer les données invalides avant d'ajouter la clé étrangère
\DB::table('diagnosticorientations')
    ->whereNotIn('diagnosticstatut_id', function($query) {
        $query->select('id')->from('diagnosticstatuts');
    })
    ->update(['diagnosticstatut_id' => null]);
```

### 3. Ajouter la clé étrangère après le nettoyage
```php
$table->foreign('diagnosticstatut_id')->references('id')->on('diagnosticstatuts')->onDelete('cascade');
```

## Pattern général pour les migrations avec clés étrangères

### Pour ajouter une nouvelle clé étrangère sur une table existante

```php
public function up(): void
{
    Schema::table('table_name', function (Blueprint $table) {
        if (!Schema::hasColumn('table_name', 'foreign_key_column')) {
            // 1. Ajouter la colonne comme nullable
            $table->unsignedBigInteger('foreign_key_column')->nullable();
            
            // 2. Nettoyer les données invalides
            \DB::table('table_name')
                ->whereNotIn('foreign_key_column', function($query) {
                    $query->select('id')->from('referenced_table');
                })
                ->update(['foreign_key_column' => null]);
            
            // 3. Ajouter la clé étrangère
            $table->foreign('foreign_key_column')
                  ->references('id')
                  ->on('referenced_table')
                  ->onDelete('cascade');
        }
    });
}
```

### Pour supprimer une clé étrangère en toute sécurité

```php
public function down(): void
{
    Schema::table('table_name', function (Blueprint $table) {
        if (Schema::hasColumn('table_name', 'foreign_key_column')) {
            try {
                $table->dropForeign(['foreign_key_column']);
            } catch (\Exception $e) {
                // La clé étrangère n'existe peut-être pas
            }
            $table->dropColumn('foreign_key_column');
        }
    });
}
```

## Types d'erreurs de contraintes et solutions

### 1. "Cannot add or update a child row"
- **Cause** : Données existantes qui référencent des IDs invalides
- **Solution** : Nettoyer les données avant d'ajouter la contrainte

### 2. "Cannot drop column" 
- **Cause** : Clé étrangère existante sur la colonne
- **Solution** : Supprimer la clé étrangère d'abord

### 3. "Table doesn't exist"
- **Cause** : Table référencée n'existe pas
- **Solution** : Vérifier l'ordre des migrations

## Instructions

Lancer les migrations :
```bash
php artisan migrate
```

Si l'erreur persiste, vérifier manuellement les données :
```sql
-- Vérifier les données invalides
SELECT * FROM diagnosticorientations 
WHERE diagnosticstatut_id NOT IN (SELECT id FROM diagnosticstatuts) 
AND diagnosticstatut_id IS NOT NULL;
```

## Migration corrigée

### 2026_02_07_110450_update_diagnosticorientations_structure.php
- ✅ Ajout de nettoyage des données invalides
- ✅ Rendre la colonne nullable
- ✅ Gestion des clés étrangères dans down()
