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
	numeroEpreuve int PRIMARY KEY,
	specialite int REFERENCES Specialite	
);

CREATE TABLE Resultat(
	membre int REFERENCES Membre1,
	numeroEpreuve int,
	dateResultat date,
	rang int NOT NULL,
	points int,
	PRIMARY KEY (membre,numeroEpreuve),
	FOREIGN KEY (numeroEpreuve) REFERENCES Epreuve (numeroEpreuve),
	UNIQUE (numeroEpreuve,rang)
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


-- Vues permettant de reconstituer les classes liées à des héritages qui ont disparu lors du passage à la MLD.
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
