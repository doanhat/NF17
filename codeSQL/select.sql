\echo 'Le système affiche les coordonnées du membre (Numéro, prénom, nom, Date de naissance, adresse, Tél.) et ses dernières inscriptions. Pour chaque inscription, il faut mémoriser l''année d''inscription, le status du membre (professionnel ou amateur), frais d''inscription, montant payé et solde.'
SELECT 	m.numeroMembre, m.nom, m.prenom, m.dateDeNaissance, m.adresse, m.telephone, m.etatDossier, i.anneeInscription, i.statutMembre, i.fraisInscription, p.montantPaiement -- solde ??
	FROM Membre m INNER JOIN Inscription i 
	ON m.numeroMembre = i.membre
	INNER JOIN Paiement p 
	ON i.numeroInscription = p.inscription
	ORDER BY i.anneeInscription DESC;
/*liste des membres actifs*/

SELECT	* 
	FROM Membre m 
	WHERE m.etatDossier=TRUE
	ORDER BY m.nom ASC;

\echo 'Si l''activité est du type compétition interne, le participant est choisi d''une liste des sportifs actifs dans la spécialité de l''épreuve.'
SELECT m.numeroMembre, m.nom, m.prenom, m.dateDeNaissance, m.adresse, m.telephone, m.etatDossier, i.statutMembre, s.specialite, e.numeroEpreuve
	FROM Membre m 	
	INNER JOIN Inscription i 
	ON m.numeroMembre = i.membre
	INNER JOIN Specialisation s
	ON m.numeroMembre = s.membre
	INNER JOIN Epreuve e
	ON s.specialite = e.specialite
	WHERE m.etatDossier=TRUE
	AND i.statutMembre = 'professionnel';

\echo 'Si l''activité est du type compétition externe, le participant est choisi d''une liste des sportifs déjà inscrits à une autre épreuve de la compétition. (il a un numero Resultat).'
SELECT m.numeroMembre, m.nom, m.prenom, m.dateDeNaissance, m.adresse, m.telephone, m.etatDossier, r.numeroResultat, r.rang, r.points, r.numeroEpreuve, e.specialite
	FROM Membre m 
	INNER JOIN Resultat r
	ON m.numeroMembre = r.membre
	INNER JOIN Epreuve e
	ON r.numeroEpreuve = e.numeroEpreuve
	WHERE m.etatDossier=TRUE;


\echo 'Retourner toutes les competitions internes du ou des membres dont le nom est Dupont :'
SELECT 	m.numeroMembre, m.nom, m.prenom, m.dateDeNaissance, m.adresse, m.telephone, m.etatDossier, v.numeroActivite, v.titreActivite
	FROM Membre m 
	INNER JOIN Resultat r
	ON m.numeroMembre = r.membre
	INNER JOIN Epreuve e
	ON r.numeroEpreuve = e.numeroEpreuve
	INNER JOIN vCompetitionInterne v
	ON e.competition = v.numeroActivite
	WHERE m.nom = 'Dupont';

/* Afficher les classes abstraites et les heritages exclusives*/
\echo 'Vues permettant de vérifier certaines contraintes (doivent être vides si respect des contraintes) :'

SELECT * 
 	FROM cActiviteAbstraite;
SELECT * 
 	FROM cActExcl;
SELECT *
	FROM cCompetitionAbstraite;
SELECT *
	FROM cCompetExcl;





