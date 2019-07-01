CREATE TABLE Membre1(
	numeroMembre int PRIMARY KEY,
	nom varchar NOT NULL,
	prenom varchar NOT NULL,
	telephone char(10)
);


CREATE TABLE Membre2(
	numeroMembre int PRIMARY KEY REFERENCES Membre1(numeroMembre),
	dateDeNaissance date NOT NULL,
	adresse varchar,
	etatDossier boolean
);

CREATE TABLE Activite(
	numeroActivite int PRIMARY KEY,
	titreActivite varchar NOT NULL,
	adresseActivite varchar
);

CREATE TABLE Financement(
	numeroActivite int PRIMARY KEY REFERENCES Activite,
	dateActivite date,
	heureActivite time
);

CREATE TABLE OrganisateurExterne(
	numeroOrganisateur int PRIMARY KEY,
	nomOrganisateur varchar NOT NULL,
	adresse varchar,
	nomResponsable varchar NOT NULL,
	prenomResponsable varchar NOT NULL,
	telephoneResponsable char(10) NOT NULL
);

CREATE TABLE Competition(
	numeroActivite int PRIMARY KEY REFERENCES Activite,
	dateDebut date,
	dateFin date,
	lieuCompetition varchar,
	CHECK(dateDebut <= dateFin)
);

CREATE TABLE CompetitionExterne1(
	numeroActivite int PRIMARY KEY REFERENCES Competition,
	organisateurExterne int NOT NULL REFERENCES OrganisateurExterne
);
CREATE TABLE CompetitionExterne2(
	numeroActivite int PRIMARY KEY REFERENCES Competition,
	organisateurExterne int NOT NULL REFERENCES OrganisateurExterne
);
CREATE TABLE CompetitionExterne41(
	numeroActivite int PRIMARY KEY REFERENCES Competition,
	organisateurExterne int NOT NULL REFERENCES OrganisateurExterne
);
CREATE TABLE CompetitionInterne(
	numeroActivite int PRIMARY KEY REFERENCES Competition
);

CREATE TABLE Discipline(
	numeroDiscipline int PRIMARY KEY,
	nomDiscipline varchar NOT NULL
);

CREATE TABLE Specialite(
	numeroSpecialite int PRIMARY KEY,
	nomSpecialite varchar NOT NULL,
	discipline int REFERENCES Discipline NOT NULL
);

CREATE TABLE Epreuve(
	competition int REFERENCES Competition,
	numeroEpreuve int,
	dateEpreuve date NOT NULL,
	heureEpreuve time NOT NULL,
	specialite int REFERENCES Specialite,
	PRIMARY KEY (competition,numeroEpreuve)
);

CREATE TABLE Resultat(
	membre int REFERENCES Membre1,
	competitionEpreuve int,
	numeroEpreuve int,
	dateResultat date,
	rang int NOT NULL,
	points int,
	PRIMARY KEY (membre,competitionEpreuve,numeroEpreuve),
	FOREIGN KEY (competitionEpreuve,numeroEpreuve) REFERENCES Epreuve (competition,numeroEpreuve),
	UNIQUE (numeroEpreuve,competitionEpreuve,rang)
);

CREATE TABLE Inscription(
	numeroInscription int PRIMARY KEY,
	anneeInscription char(4) NOT NULL,
	statutMembre varchar NOT NULL,
	membre int REFERENCES Membre1 NOT NULL
);

CREATE TABLE Paiement(
	numeroPaiement int PRIMARY KEY,
	montantPaiement int NOT NULL,
	inscription int REFERENCES Inscription NOT NULL
);

CREATE TABLE Responsabilite(
	numeroMembre int REFERENCES Membre1,
	numeroActivite int REFERENCES Activite,
	responsabiliteMembre varchar,
	PRIMARY KEY (numeroMembre,numeroActivite,responsabiliteMembre)
);

CREATE TABLE Specialisation(
	membre int REFERENCES Membre1,
	specialite int REFERENCES Specialite,
	PRIMARY KEY (membre,specialite)
);
-- Vues permettant de reconstituer les tables d'« avant partitionnement »
CREATE VIEW vMembre12 AS
	SELECT u.numeroMembre, u.nom, u.prenom, u.telephone, d.dateDeNaissance, d.adresse, d.etatDossier 
	FROM Membre1 u
	INNER JOIN Membre2 d
	ON u.numeroMembre = d.numeroMembre;
CREATE VIEW vCompetitionExterneComplete AS
	SELECT * FROM
	CompetitionExterne1
	UNION
	SELECT * FROM
	CompetitionExterne2
	UNION
	SELECT * FROM
	CompetitionExterne41;
-- Il faudra ajouter ci-dessous autant de UNION CompetitionExterneX que nécessaire...

-- Vues permettant de reconstituer les classes liées à des héritages qui ont disparu lors du passage à la MLD.
CREATE VIEW vFinancement AS
	SELECT a.numeroActivite, a.titreActivite, a.adresseActivite, f.dateActivite, f.heureActivite
	FROM Activite a
	INNER JOIN Financement f
	ON a.numeroActivite = f.numeroActivite;

CREATE VIEW vCompetition AS
	SELECT a.numeroActivite, a.titreActivite, a.adresseActivite, c.dateDebut, c.dateFin, c.lieuCompetition
	FROM Activite a
	INNER JOIN Competition c
	ON a.numeroActivite = c.numeroActivite;

CREATE VIEW vCompetitionInterne AS
	SELECT v.numeroActivite, v.titreActivite, v.adresseActivite, v.dateDebut, v.dateFin, v.lieuCompetition
	FROM vCompetition v
	INNER JOIN CompetitionInterne i
	ON i.numeroActivite = v.numeroActivite;

CREATE VIEW vCompetitionExterne AS
	SELECT v.numeroActivite, v.titreActivite, v.adresseActivite, v.dateDebut, v.dateFin, v.lieuCompetition, e.organisateurExterne
	FROM vCompetition v
	INNER JOIN vCompetitionExterneComplete e
	ON e.numeroActivite = v.numeroActivite;

-- Vues permettant de s'assurer des contraintes de la MCD d'abstraction des deux classes mères et d'exclusivité des deux héritages.
CREATE VIEW cActiviteAbstraite AS -- Les valeurs retournées par cette vue sont les numéros d'activités qui n'apparaissent ni dans Financement ni dans Competition.
	SELECT a.numeroActivite "Activité non instanciée"
	FROM Activite a
	LEFT JOIN Financement f ON a.numeroActivite = f.numeroActivite
	LEFT JOIN Competition c ON a.numeroActivite = c.numeroActivite
	WHERE f.numeroActivite IS NULL AND c.numeroActivite IS NULL;

CREATE VIEW cActExcl AS -- Les valeurs retournées par cette vue sont les numéros d'activités qui apparaissent à la fois dans Financement et dans Competition.
	SELECT f.numeroActivite "Activité non exclusivement instanciée"
	FROM Financement f 
	INNER JOIN Competition c ON f.numeroActivite = c.numeroActivite;

CREATE VIEW cCompetitionAbstraite AS -- Les valeurs retournées par cette vue sont les numéros d'activité des compétitions qui n'apparaissent ni dans CompetitionInterne ni dans CompetitionExterne.
	SELECT c.numeroActivite "Compétition non instanciée"
	FROM Competition c
	LEFT JOIN CompetitionInterne i ON c.numeroActivite = i.numeroActivite
	LEFT JOIN vCompetitionExterneComplete e ON c.numeroActivite = e.numeroActivite
	WHERE i.numeroActivite IS NULL AND e.numeroActivite IS NULL;

CREATE VIEW cCompetExcl AS -- Les valeurs retournées par cette vue sont les numéros d'activités des compétitions qui apparaissent à la fois dans CompetitionInterne et dans CompetitionExterne.
	SELECT i.numeroActivite "Compétition non exclusivement instanciée"
	FROM CompetitionInterne i
	INNER JOIN vCompetitionExterneComplete e ON i.numeroActivite = e.numeroActivite;

CREATE VIEW vInscription AS
	SELECT numeroInscription, anneeInscription, statutMembre, membre, (
		CASE WHEN statutMembre = 'amateur' THEN 0
		ELSE 25
		END) fraisInscription
	FROM Inscription;
--Vues permettant de gérer le solde.
CREATE VIEW vMembre AS
	SELECT m.numeroMembre, m.nom, m.prenom, m.dateDeNaissance, m.adresse, m.telephone, COALESCE(sum(i.fraisInscription),0)-COALESCE(sum(p.montantPaiement),0) solde
	FROM vMembre12 m
	INNER JOIN vInscription i ON m.numeroMembre = i.membre
	LEFT JOIN Paiement p ON p.inscription = i.numeroInscription
	GROUP BY p.numeroPaiement, m.numeroMembre, m.nom, m.prenom, m.dateDeNaissance, m.adresse, m.telephone;

-- Vues matérialisées
CREATE MATERIALIZED VIEW vmMembreSolde AS
	SELECT m.numeroMembre, COALESCE(sum(i.fraisInscription),0)-COALESCE(sum(p.montantPaiement),0) solde
	FROM Membre1 m
	INNER JOIN vInscription i ON m.numeroMembre = i.membre
	LEFT JOIN Paiement p ON p.inscription = i.numeroInscription
	GROUP BY p.numeroPaiement, m.numeroMembre;
