/**
 * Exemple de client JavaScript pour consommer l'API de Diagnostic Complet
 */

class DiagnosticAPIClient {
    constructor(baseUrl = 'http://localhost/cijet/public/api/v1') {
        this.baseUrl = baseUrl;
    }

    /**
     * Récupère tous les diagnostics complets pour un utilisateur
     * @param {string} email - Email de l'utilisateur
     * @returns {Promise<Object>} - Données de diagnostic
     */
    async getDiagnosticComplet(email) {
        try {
            const response = await fetch(`${this.baseUrl}/diagnostic/complet/${encodeURIComponent(email)}`, {
                method: 'GET',
                headers: {
                    'Accept': 'application/json',
                    'Content-Type': 'application/json'
                }
            });

            if (!response.ok) {
                throw new Error(`HTTP error! status: ${response.status}`);
            }

            const data = await response.json();
            
            if (!data.success) {
                throw new Error(data.message || 'Erreur lors de la récupération des données');
            }

            return data.data;
        } catch (error) {
            console.error('Erreur lors de l\'appel API:', error);
            throw error;
        }
    }

    /**
     * Formate les données pour un affichage simplifié
     * @param {Object} data - Données brutes de l'API
     * @returns {Object} - Données formatées
     */
    formatDataForDisplay(data) {
        const formatted = {
            utilisateur: {
                email: data.user_email,
                id: data.user_id,
                nom: data.membre.nom_complet,
                email_membre: data.membre.email
            },
            statistiques: {
                totalEntreprises: data.membre.entreprises.length,
                totalDiagnosticsMembre: data.membre.diagnostics ? data.membre.diagnostics.length : 0,
                totalDiagnosticsEntreprises: data.membre.entreprises.reduce((total, entreprise) => {
                    return total + (entreprise.diagnostics ? entreprise.diagnostics.length : 0);
                }, 0)
            },
            entreprises: data.membre.entreprises.map(entreprise => ({
                id: entreprise.id,
                nom: entreprise.nom,
                diagnostics: entreprise.diagnostics ? entreprise.diagnostics.map(diag => ({
                    id: diag.id,
                    score: diag.score_global,
                    statut: diag.statut,
                    modules: diag.modules ? diag.modules.length : 0
                })) : []
            })),
            diagnosticsMembre: data.membre.diagnostics ? data.membre.diagnostics.map(diag => ({
                id: diag.id,
                score: diag.score_global,
                statut: diag.statut,
                modules: diag.modules ? diag.modules.length : 0
            })) : []
        };

        return formatted;
    }

    /**
     * Calcule les statistiques globales pour un utilisateur
     * @param {Object} data - Données de l'API
     * @returns {Object} - Statistiques consolidées
     */
    calculateGlobalStatistics(data) {
        let totalScore = 0;
        let totalModules = 0;
        let totalQuestions = 0;
        let totalQuestionsRepondues = 0;

        // Traiter les diagnostics du membre
        if (data.membre.diagnostics) {
            data.membre.diagnostics.forEach(diag => {
                totalScore += diag.score_global || 0;
                totalModules += diag.modules ? diag.modules.length : 0;
                if (diag.statistiques_globales) {
                    totalQuestions += diag.statistiques_globales.nombre_total_questions || 0;
                    totalQuestionsRepondues += diag.statistiques_globales.questions_repondues_total || 0;
                }
            });
        }

        // Traiter les diagnostics des entreprises
        data.membre.entreprises.forEach(entreprise => {
            if (entreprise.diagnostics) {
                entreprise.diagnostics.forEach(diag => {
                    totalScore += diag.score_global || 0;
                    totalModules += diag.modules ? diag.modules.length : 0;
                    if (diag.statistiques_globales) {
                        totalQuestions += diag.statistiques_globales.nombre_total_questions || 0;
                        totalQuestionsRepondues += diag.statistiques_globales.questions_repondues_total || 0;
                    }
                });
            }
        });

        return {
            scoreTotal: totalScore,
            nombreModules: totalModules,
            nombreTotalQuestions: totalQuestions,
            nombreQuestionsRepondues: totalQuestionsRepondues,
            tauxReponse: totalQuestions > 0 ? Math.round((totalQuestionsRepondues / totalQuestions) * 100) : 0
        };
    }
}

// Exemple d'utilisation
async function exampleUsage() {
    const client = new DiagnosticAPIClient();
    
    try {
        console.log('Récupération des données de diagnostic...');
        const userEmail = 'test@example.com'; // Remplacer par l'email utilisateur réel
        const data = await client.getDiagnosticComplet(userEmail);
        
        console.log('✅ Données récupérées avec succès!');
        
        // Afficher les données formatées
        const formattedData = client.formatDataForDisplay(data);
        console.log('Données formatées:', formattedData);
        
        // Calculer et afficher les statistiques globales
        const stats = client.calculateGlobalStatistics(data);
        console.log('Statistiques globales:', stats);
        
        // Exemple d'affichage HTML
        displayResultsHTML(formattedData, stats);
        
    } catch (error) {
        console.error('❌ Erreur:', error.message);
    }
}

/**
 * Affiche les résultats dans une page HTML (exemple)
 */
function displayResultsHTML(data, stats) {
    const html = `
        <div class="diagnostic-results">
            <h2>Diagnostic Complet - ${data.utilisateur.nom}</h2>
            
            <div class="user-info">
                <p><strong>Email Utilisateur:</strong> ${data.utilisateur.email}</p>
                <p><strong>Email Membre:</strong> ${data.utilisateur.email_membre}</p>
                <p><strong>ID Utilisateur:</strong> ${data.utilisateur.id}</p>
            </div>
            
            <div class="statistics">
                <h3>Statistiques Globales</h3>
                <p><strong>Score Total:</strong> ${stats.scoreTotal}</p>
                <p><strong>Nombre de Modules:</strong> ${stats.nombreModules}</p>
                <p><strong>Questions Répondues:</strong> ${stats.nombreQuestionsRepondues}/${stats.nombreTotalQuestions}</p>
                <p><strong>Taux de Réponse:</strong> ${stats.tauxReponse}%</p>
            </div>
            
            <div class="entreprises">
                <h3>Entreprises (${data.statistiques.totalEntreprises})</h3>
                ${data.entreprises.map(entreprise => `
                    <div class="entreprise">
                        <h4>${entreprise.nom}</h4>
                        <p><strong>Diagnostics:</strong> ${entreprise.diagnostics.length}</p>
                        ${entreprise.diagnostics.map(diag => `
                            <div class="diagnostic">
                                <p>Diagnostic #${diag.id} - Score: ${diag.score} - Statut: ${diag.statut}</p>
                            </div>
                        `).join('')}
                    </div>
                `).join('')}
            </div>
            
            ${data.diagnosticsMembre.length > 0 ? `
                <div class="diagnostics-membre">
                    <h3>Diagnostics Directs du Membre (${data.diagnosticsMembre.length})</h3>
                    ${data.diagnosticsMembre.map(diag => `
                        <div class="diagnostic">
                            <p>Diagnostic #${diag.id} - Score: ${diag.score} - Statut: ${diag.statut}</p>
                        </div>
                    `).join('')}
                </div>
            ` : ''}
        </div>
    `;
    
    console.log('HTML généré:');
    console.log(html);
}

// Exporter pour utilisation dans d'autres modules
if (typeof module !== 'undefined' && module.exports) {
    module.exports = { DiagnosticAPIClient, exampleUsage };
}

// Exécuter l'exemple si ce fichier est chargé directement
if (typeof window !== 'undefined') {
    // Dans un navigateur
    document.addEventListener('DOMContentLoaded', exampleUsage);
} else {
    // Dans Node.js
    exampleUsage();
}
