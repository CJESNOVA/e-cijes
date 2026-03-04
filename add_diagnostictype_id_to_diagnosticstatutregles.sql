-- Ajouter le champ diagnostictype_id à la table diagnosticstatutregles
ALTER TABLE diagnosticstatutregles 
ADD COLUMN diagnostictype_id INT NULL AFTER entrepriseprofil_id;

-- Ajouter la contrainte de clé étrangère
ALTER TABLE diagnosticstatutregles 
ADD CONSTRAINT fk_diagnosticstatutregles_diagnostictype_id 
FOREIGN KEY (diagnostictype_id) REFERENCES diagnostictypes(id) 
ON DELETE CASCADE;

-- Ajouter un index pour optimiser les performances
CREATE INDEX idx_diagnosticstatutregles_diagnostictype_id 
ON diagnosticstatutregles(diagnostictype_id);
