-- Ajouter le champ plantemplate_id à la table plans
ALTER TABLE plans 
ADD COLUMN plantemplate_id INT NULL AFTER diagnosticquestion_id;

-- Ajouter la contrainte de clé étrangère
ALTER TABLE plans 
ADD CONSTRAINT fk_plans_plantemplate_id 
FOREIGN KEY (plantemplate_id) REFERENCES plantemplates(id) 
ON DELETE CASCADE;

-- Ajouter un index pour optimiser les performances
CREATE INDEX idx_plans_plantemplate_id 
ON plans(plantemplate_id);
