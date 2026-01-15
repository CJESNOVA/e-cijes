# Documentation API de Diagnostic Complet

## Overview

Cette API permet de récupérer toutes les données de diagnostic pour un utilisateur donné, incluant les informations du membre, de ses entreprises, et tous les diagnostics effectués avec leurs détails complets.

## Endpoint

### GET /api/v1/diagnostic/complet/{email}

Récupère toutes les données de diagnostic pour un utilisateur spécifique via son email.

#### Paramètres

- `email` (string, obligatoire) : Email de l'utilisateur dont on veut récupérer les diagnostics

#### Response Format

**Success Response (200 OK)**
```json
{
  "success": true,
  "message": "Données de diagnostic récupérées avec succès",
  "data": {
    "user_email": "user@example.com",
    "user_id": 123,
    "membre": {
      "id": 456,
      "numero_identifiant": "MBR202412345",
      "nom": "Dupont",
      "prenom": "Jean",
      "email": "jean.dupont@example.com",
      "telephone": "+33612345678",
      "nom_complet": "Jean Dupont",
      "entreprises": [
        {
          "id": 789,
          "nom": "Entreprise A",
          "email": "contact@entreprise-a.com",
          "telephone": "+33687654321",
          "adresse": "123 Rue de l'Entreprise",
          "description": "Description de l'entreprise",
          "annee_creation": 2020,
          "est_membre_cijes": "Oui",
          "diagnostics": [
            {
              "id": 1,
              "score_global": 85,
              "commentaire": "Bon diagnostic",
              "etat": 1,
              "spotlight": 0,
              "type": "Diagnostic complet",
              "statut": "Terminé",
              "accompagnement": "Accompagnement standard",
              "modules": [
                {
                  "id": 1,
                  "titre": "Module 1",
                  "description": "Description du module",
                  "position": 1,
                  "questions": [
                    {
                      "id": 1,
                      "titre": "Question 1",
                      "position": 1,
                      "obligatoire": 1,
                      "type": "Choix multiple",
                      "categorie": "Catégorie A",
                      "reponse": {
                        "id": 1,
                        "titre": "Réponse A",
                        "score": 10,
                        "position": 1
                      },
                      "reponse_texte": "Texte de la réponse",
                      "reponse_ids": "1,2"
                    }
                  ],
                  "statistiques": {
                    "score_total": 75,
                    "score_maximum": 100,
                    "pourcentage": 75.0,
                    "questions_repondues": 5,
                    "nombre_questions": 5
                  }
                }
              ],
              "statistiques_globales": {
                "score_total": 85,
                "nombre_modules": 2,
                "nombre_total_questions": 10,
                "questions_repondues_total": 10
              }
            }
          ]
        }
      ],
      "diagnostics": [
        // Même structure que pour les entreprises, mais pour le membre lui-même
      ]
    }
  }
}
```

**Error Response (404 Not Found)**
```json
{
  "success": false,
  "message": "Aucun utilisateur trouvé avec cet email",
  "data": null
}
```

**Error Response (500 Internal Server Error)**
```json
{
  "success": false,
  "message": "Erreur lors de la récupération des données: [message d'erreur]",
  "data": null
}
```

## Structure des données

### Membre
- Informations de base du membre associé à l'utilisateur
- Liste des entreprises liées au membre
- Diagnostics effectués directement par le membre (sans entreprise)

### Entreprise
- Informations complètes de l'entreprise
- Diagnostics effectués pour cette entreprise par le membre

### Diagnostic
- Informations générales du diagnostic
- Liste des modules du diagnostic
- Statistiques globales

### Module
- Informations du module de diagnostic
- Liste des questions du module
- Statistiques du module

### Question
- Détails de la question
- Réponse fournie par l'utilisateur
- Score obtenu

## Exemples d'utilisation

### Récupérer les diagnostics pour l'email user@example.com
```bash
curl -X GET "http://votredomaine.com/api/v1/diagnostic/complet/user@example.com" \
     -H "Accept: application/json" \
     -H "Content-Type: application/json"
```

### En JavaScript (fetch)
```javascript
fetch('http://votredomaine.com/api/v1/diagnostic/complet/user@example.com')
  .then(response => response.json())
  .then(data => {
    if (data.success) {
      console.log('Données de diagnostic:', data.data);
    } else {
      console.error('Erreur:', data.message);
    }
  })
  .catch(error => console.error('Erreur réseau:', error));
```

## Notes importantes

1. **Performance** : L'API récupère toutes les données en une seule fois, ce qui peut être volumineux pour des utilisateurs avec beaucoup de diagnostics.
2. **Pagination** : Actuellement non implémentée, mais pourrait être ajoutée pour les grands ensembles de données.
3. **Authentification** : Vous pouvez ajouter un middleware d'authentification si nécessaire.
4. **Cache** : Considérez l'ajout de cache pour les données qui ne changent pas fréquemment.

## Relations utilisées

- `User` (recherche par email) → `Membre` (via `user_id`)
- `Membre` ↔ `Entreprise` (via table `entreprisemembres`)
- `Diagnostic` → `Membre` et `Diagnostic` → `Entreprise`
- `Diagnosticresultat` → `Diagnostic`
- `Diagnosticresultat` → `Diagnosticquestion`
- `Diagnosticresultat` → `Diagnosticreponse`
- `Diagnosticquestion` → `Diagnosticmodule`
