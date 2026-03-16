# Documentation API de Diagnostic Complet

## Overview

Cette API permet de récupérer toutes les données de diagnostic pour un utilisateur donné, incluant les informations du membre, de ses entreprises, et tous les diagnostics effectués avec leurs détails complets.

## 🔐 Authentification

L'API est maintenant sécurisée avec des tokens Bearer. Vous devez d'abord vous authentifier pour obtenir un token, puis l'inclure dans vos appels API.

### Obtenir un token

**Endpoint** : `POST /api/v1/auth/login`

**Corps de la requête** :
```json
{
  "email": "votre@email.com",
  "password": "votre_mot_de_passe"
}
```

**Réponse de connexion** :
```json
{
  "success": true,
  "message": "Authentification réussie",
  "data": {
    "user": {
      "id": 123,
      "email": "votre@email.com",
      "name": "Nom Utilisateur"
    },
    "token": "1|abc123def456...",
    "token_type": "Bearer"
  }
}
```

### Utiliser le token

Ajoutez le token dans l'en-tête Authorization :
```
Authorization: Bearer 1|abc123def456...
```

## Endpoint

### GET /api/v1/diagnostic/complet/{email} 🔐

Récupère toutes les données de diagnostic pour un utilisateur spécifique via son email.

#### Paramètres

- `email` (string, obligatoire) : Email de l'utilisateur dont on veut récupérer les diagnostics

#### En-têtes requis

- `Authorization: Bearer {token}` (obligatoire)
- `Accept: application/json`
- `Content-Type: application/json`

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

**1. Obtenir un token d'abord**
```bash
curl -X POST "http://votredomaine.com/api/v1/auth/login" \
     -H "Content-Type: application/json" \
     -d '{
       "email": "votre@email.com",
       "password": "votre_mot_de_passe"
     }'
```

**2. Utiliser le token pour appeler l'API**
```bash
curl -X GET "http://votredomaine.com/api/v1/diagnostic/complet/user@example.com" \
     -H "Accept: application/json" \
     -H "Content-Type: application/json" \
     -H "Authorization: Bearer 1|abc123def456..."
```

### En JavaScript (fetch avec authentification)
```javascript
// 1. Fonction pour s'authentifier et obtenir un token
const login = async (email, password) => {
  const response = await fetch('http://votredomaine.com/api/v1/auth/login', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json'
    },
    body: JSON.stringify({
      email: email,
      password: password
    })
  });
  
  const data = await response.json();
  return data.success ? data.data.token : null;
};

// 2. Utiliser le token pour appeler l'API de diagnostic
const fetchDiagnosticData = async (userEmail, token) => {
  const response = await fetch(
    `http://votredomaine.com/api/v1/diagnostic/complet/${userEmail}`,
    {
      method: 'GET',
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'Authorization': `Bearer ${token}`
      }
    }
  );

  if (!response.ok) {
    throw new Error(`HTTP error! status: ${response.status}`);
  }

  return await response.json();
};

// 3. Exemple d'utilisation complet
const getDiagnosticWithAuth = async () => {
  try {
    // Étape 1: Connexion
    const token = await login('votre@email.com', 'votre_mot_de_passe');
    if (!token) {
      console.error('Échec de l\'authentification');
      return;
    }

    // Étape 2: Récupération des données
    const data = await fetchDiagnosticData('user@example.com', token);
    
    if (data.success) {
      console.log('Données de diagnostic:', data.data);
    } else {
      console.error('Erreur:', data.message);
    }
  } catch (error) {
    console.error('Erreur réseau:', error);
  }
};

// Appeler la fonction
getDiagnosticWithAuth();
```

### En React (avec hooks)
```jsx
import React, { useState, useEffect } from 'react';

const DiagnosticAPI = ({ userEmail }) => {
  const [data, setData] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchDiagnosticData = async () => {
      try {
        setLoading(true);
        const response = await fetch(
          `http://votredomaine.com/api/v1/diagnostic/complet/${userEmail}`,
          {
            method: 'GET',
            headers: {
              'Accept': 'application/json',
              'Content-Type': 'application/json'
            }
          }
        );

        if (!response.ok) {
          throw new Error(`HTTP error! status: ${response.status}`);
        }

        const result = await response.json();
        
        if (result.success) {
          setData(result.data);
        } else {
          setError(result.message);
        }
      } catch (err) {
        setError(err.message);
      } finally {
        setLoading(false);
      }
    };

    if (userEmail) {
      fetchDiagnosticData();
    }
  }, [userEmail]);

  if (loading) return <div>Chargement...</div>;
  if (error) return <div>Erreur: {error}</div>;
  if (!data) return <div>Aucune donnée</div>;

  return (
    <div className="diagnostic-results">
      <h2>Diagnostic pour {data.membre.nom_complet}</h2>
      <p>Email: {data.user_email}</p>
      <p>Score global: {data.membre.diagnostics?.[0]?.score_global || 'N/A'}</p>
      
      <h3>Entreprises ({data.membre.entreprises.length})</h3>
      {data.membre.entreprises.map(entreprise => (
        <div key={entreprise.id}>
          <h4>{entreprise.nom}</h4>
          <p>Diagnostics: {entreprise.diagnostics?.length || 0}</p>
        </div>
      ))}
    </div>
  );
};

// Utilisation
const App = () => {
  return (
    <div>
      <DiagnosticAPI userEmail="user@example.com" />
    </div>
  );
};

export default DiagnosticAPI;
```

### En React (version custom hook)
```jsx
import { useState, useEffect } from 'react';

// Custom hook pour l'API de diagnostic
const useDiagnosticAPI = (userEmail) => {
  const [data, setData] = useState(null);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState(null);

  const fetchDiagnostic = async (email) => {
    if (!email) return;
    
    try {
      setLoading(true);
      setError(null);
      
      const response = await fetch(
        `http://votredomaine.com/api/v1/diagnostic/complet/${encodeURIComponent(email)}`,
        {
          method: 'GET',
          headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
          }
        }
      );

      const result = await response.json();
      
      if (result.success) {
        setData(result.data);
      } else {
        setError(result.message);
      }
    } catch (err) {
      setError(err.message);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    fetchDiagnostic(userEmail);
  }, [userEmail]);

  return { data, loading, error, refetch: () => fetchDiagnostic(userEmail) };
};

// Utilisation du hook
const DiagnosticComponent = () => {
  const [email, setEmail] = useState('user@example.com');
  const { data, loading, error, refetch } = useDiagnosticAPI(email);

  const handleSubmit = (e) => {
    e.preventDefault();
    refetch();
  };

  return (
    <div>
      <form onSubmit={handleSubmit}>
        <input
          type="email"
          value={email}
          onChange={(e) => setEmail(e.target.value)}
          placeholder="Email de l'utilisateur"
        />
        <button type="submit">Charger les diagnostics</button>
      </form>

      {loading && <div>Chargement en cours...</div>}
      {error && <div style={{ color: 'red' }}>Erreur: {error}</div>}
      
      {data && (
        <div>
          <h3>Diagnostic pour {data.membre.nom_complet}</h3>
          <p>Email utilisateur: {data.user_email}</p>
          <p>Nombre d'entreprises: {data.membre.entreprises.length}</p>
          
          {data.membre.entreprises.map(entreprise => (
            <div key={entreprise.id} style={{ margin: '20px 0', padding: '15px', border: '1px solid #ddd' }}>
              <h4>{entreprise.nom}</h4>
              <p>Email: {entreprise.email}</p>
              <p>Téléphone: {entreprise.telephone}</p>
              
              {entreprise.diagnostics && entreprise.diagnostics.map(diagnostic => (
                <div key={diagnostic.id} style={{ marginLeft: '20px' }}>
                  <h5>Diagnostic #{diagnostic.id}</h5>
                  <p>Score global: {diagnostic.score_global}</p>
                  <p>Statut: {diagnostic.statut}</p>
                  <p>Modules: {diagnostic.modules ? diagnostic.modules.length : 0}</p>
                </div>
              ))}
            </div>
          ))}
        </div>
      )}
    </div>
  );
};

export default DiagnosticComponent;
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
