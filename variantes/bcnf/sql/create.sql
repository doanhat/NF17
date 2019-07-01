CREATE TABLE Membre(
	numeroMembre int PRIMARY KEY,
	nom varchar NOT NULL,
	prenom varchar NOT NULL,
	dateDeNaissance date NOT NULL,
	adresse varchar,
	telephone char(10),
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
	nomOrganisateur varchar,
	adresse varchar,
	nomResponsable varchar NOT NULL,
	prenomResponsable varchar,
	telephoneResponsable char(10),
	PRIMARY KEY (nomOrganisateur,adresse,telephoneResponsable)
);

CREATE TABLE Competition(
	numeroActivite int PRIMARY KEY REFERENCES Activite,
	dateDebut date,
	dateFin date,
	lieuCompetition varchar,
	CHECK(dateDebut <= dateFin)
);

CREATE TABLE CompetitionExterne(
	numeroActivite int PRIMARY KEY REFERENCES Competition,
	nomOrganisateur varchar,
	adresse varchar,
	telephoneResponsable char(10),
	FOREIGN KEY (nomOrganisateur,adresse,telephoneResponsable) REFERENCES OrganisateurExterne (nomOrganisateur,adresse,telephoneResponsable)	
);

CREATE TABLE CompetitionInterne(
	numeroActivite int PRIMARY KEY REFERENCES Competition,
	titre varchar
);

CREATE TABLE Discipline(
	nomDiscipline varchar PRIMARY KEY
);

CREATE TABLE Specialite(
	nomSpecialite varchar PRIMARY KEY,
	discipline varchar REFERENCES Discipline
);

CREATE TABLE Epreuve(
	competition int REFERENCES Competition,
	numeroEpreuve int,
	dateEpreuve date NOT NULL,
	heureEpreuve time NOT NULL,
	specialite varchar REFERENCES Specialite,
	PRIMARY KEY (competition,numeroEpreuve)
);

CREATE TABLE Resultat(
	membre int REFERENCES Membre,
	numeroEpreuve int,
	competitionEpreuve int,
	rang int,
	points int,
	PRIMARY KEY (membre,numeroEpreuve,competitionEpreuve),
	FOREIGN KEY (numeroEpreuve,competitionEpreuve) REFERENCES Epreuve (numeroEpreuve,competition),
	UNIQUE (numeroEpreuve,competitionEpreuve,rang)
);

CREATE TABLE Inscription(
	membre int REFERENCES Membre,
	anneeInscription char(4),
	statutMembre varchar NOT NULL,
	PRIMARY KEY (membre,anneeInscription)
);

CREATE TABLE Paiement(
	numeroPaiement int PRIMARY KEY,
	montantPaiement int NOT NULL,
	membre int,
	anneeInscription char(4),
	FOREIGN KEY (membre,anneeInscription) REFERENCES Inscription (membre,anneeInscription)
);

CREATE TABLE Responsabilite(
	numeroMembre int REFERENCES Membre,
	numeroActivite int REFERENCES Activite,
	responsabiliteMembre varchar,
	PRIMARY KEY (numeroMembre,numeroActivite,responsabiliteMembre)
);

CREATE TABLE Specialisation(
	membre int REFERENCES Membre,
	specialite varchar REFERENCES Specialite,
	PRIMARY KEY (membre,specialite)
);

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
	SELECT v.numeroActivite, v.titreActivite, v.adresseActivite, v.dateDebut, v.dateFin, v.lieuCompetition, e.nomOrganisateur, e.adresse, e.telephoneResponsable
	FROM vCompetition v
	INNER JOIN CompetitionExterne e
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
	LEFT JOIN CompetitionExterne e ON c.numeroActivite = e.numeroActivite
	WHERE i.numeroActivite IS NULL AND e.numeroActivite IS NULL;

CREATE VIEW cCompetExcl AS -- Les valeurs retournées par cette vue sont les numéros d'activités des compétitions qui apparaissent à la fois dans CompetitionInterne et dans CompetitionExterne.
	SELECT i.numeroActivite "Compétition non exclusivement instanciée"
	FROM CompetitionInterne i
	INNER JOIN CompetitionExterne e ON i.numeroActivite = e.numeroActivite;

-- Matérialisation des méthodes par des vues
CREATE VIEW vInscription AS
	SELECT anneeInscription, membre, statutMembre, (
		CASE WHEN statutMembre = 'amateur' THEN 0
		ELSE 25
		END) fraisInscription
	FROM Inscription;

CREATE VIEW vMembre AS
	SELECT m.numeroMembre, m.nom, m.prenom, m.dateDeNaissance, m.adresse, m.telephone, sum(i.fraisInscription)-sum(p.montantPaiement) solde
	FROM Membre m
	INNER JOIN vInscription i ON m.numeroMembre = i.membre
	LEFT JOIN Paiement p ON (p.membre,p.anneeInscription) = (i.membre,i.anneeInscription) 
	GROUP BY p.numeroPaiement,m.numeroMembre;
