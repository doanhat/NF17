CREATE TABLE Membre(
	numeroMembre int PRIMARY KEY,
	identitemembre JSON NOT NULL,
	infosmembre JSON NOT NULL,
	etatDossier int
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
	Equipe JSON NOT NULL,
	CHECK(dateDebut <= dateFin)
);

CREATE TABLE CompetitionExterne(
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
	numeroResultat int,
	membre int REFERENCES Membre,
	competitionEpreuve int,
	numeroEpreuve int,
	dateResultat date,
	rang int NOT NULL,
	points int,
	PRIMARY KEY (numeroResultat,membre,competitionEpreuve,numeroEpreuve),
	FOREIGN KEY (competitionEpreuve,numeroEpreuve) REFERENCES Epreuve (competition,numeroEpreuve),
	UNIQUE (numeroEpreuve,competitionEpreuve,rang)
);

CREATE TABLE Inscription(
	numeroInscription int PRIMARY KEY,
	anneeInscription char(4) NOT NULL,
	statutMembre varchar NOT NULL,
	membre int REFERENCES Membre NOT NULL
);

CREATE TABLE Paiement(
	numeroPaiement int PRIMARY KEY,
	montantPaiement int NOT NULL,
	inscription int REFERENCES Inscription NOT NULL
);

CREATE TABLE Responsabilite(
	numeroMembre int REFERENCES Membre,
	numeroActivite int REFERENCES Activite,
	responsabiliteMembre varchar,
	PRIMARY KEY (numeroMembre,numeroActivite,responsabiliteMembre)
);

CREATE TABLE Specialisation(
	membre int REFERENCES Membre,
	specialite int REFERENCES Specialite,
	PRIMARY KEY (membre,specialite)
);

