CREATE OR REPLACE TYPE tMembre AS OBJECT (
	identitemembre XMLTYPE,
	infosmembre XMLTYPE,
	etatDossier number(1)
);
/
CREATE TABLE Membre OF tMembre (
    identitemembre NOT NULL,
    infosmembre NOT NULL
) ;
/
CREATE OR REPLACE TYPE tActivite AS OBJECT (
	titreActivite varchar(50),
	adresseActivite varchar(128)
);
/
CREATE TABLE Activite OF tActivite (
    titreActivite NOT NULL
);
/
CREATE OR REPLACE TYPE tFinancement AS OBJECT (
    refActivite REF tActivite,
	dateActivite date,
	heureActivite number(4,2)
);
/
CREATE TABLE Financement OF tFinancement (
    refActivite NOT NULL,
    SCOPE FOR (refActivite) IS Activite,
    dateActivite NOT NULL
);
/
CREATE OR REPLACE TYPE tOrganisateurExterne AS OBJECT (
	nomOrganisateur varchar(30),
	adresse varchar(128),
	nomResponsable varchar(30),
	prenomResponsable varchar(30),
	telephoneResponsable char(10)
);
/
CREATE TABLE OrganisateurExterne OF tOrganisateurExterne (
    nomOrganisateur NOT NULL,
    nomResponsable NOT NULL,
    prenomResponsable NOT NULL,
    telephoneResponsable NOT NULL
);
/

CREATE OR REPLACE TYPE tEquipe AS OBJECT (
    nom varchar(50),
    joueurs XMLTYPE
);
/
CREATE OR REPLACE TYPE tListeEquipes AS TABLE OF tEquipe;
/
CREATE OR REPLACE TYPE tCompetition AS OBJECT (
    refActivite REF tActivite,
	dateDebut date,
	dateFin date,
	lieuCompetition varchar(128),
    equipes tListeEquipes
);
/
CREATE TABLE Competition OF tCompetition(
    refActivite NOT NULL,
    SCOPE FOR (refActivite) IS Activite,
    CHECK(dateDebut <= dateFin)
) NESTED TABLE equipes STORE AS listeEquipes (NESTED TABLE joueurs STORE AS listeJoueurs);
/

CREATE OR REPLACE TYPE tCompetitionExterne AS OBJECT (
    refCompetition REF tCompetition,
	refOrganisateurExterne REF tOrganisateurExterne
);
/
CREATE TABLE CompetitionExterne OF tCompetitionExterne (
    refOrganisateurExterne NOT NULL,
    refCompetition NOT NULL,
    SCOPE FOR (refOrganisateurExterne) IS OrganisateurExterne,
    SCOPE FOR (refCompetition) IS Competition
);
/
CREATE OR REPLACE TYPE tCompetitionInterne AS OBJECT (
    refCompetition REF tCompetition
);
/
CREATE TABLE CompetitionInterne OF tCompetitionInterne (
    refCompetition NOT NULL,
    SCOPE FOR (refCompetition) IS Competition
);
/
CREATE OR REPLACE TYPE tDiscipline AS OBJECT (
	nomDiscipline varchar(20)
);
/
CREATE TABLE Discipline OF tDiscipline (
        PRIMARY KEY (nomDiscipline)
);
/
CREATE OR REPLACE TYPE tSpecialite AS OBJECT (
	nomSpecialite varchar(40),
	refDiscipline REF tDiscipline
);
/
CREATE TABLE Specialite OF tSpecialite (
    PRIMARY KEY (nomSpecialite),
    refDiscipline NOT NULL,
    SCOPE FOR (refDiscipline) IS Discipline
);
/
CREATE OR REPLACE TYPE tEpreuve AS OBJECT (
    refCompetition REF tCompetition,
	dateEpreuve date,
	heureEpreuve number(4,2),
	refSpecialite REF tSpecialite
);
/
CREATE TABLE Epreuve OF tEpreuve (
    refCompetition NOT NULL,
    dateEpreuve NOT NULL,
    heureEpreuve NOT NULL,
    refSpecialite NOT NULL,
    SCOPE FOR (refCompetition) IS Competition,
    SCOPE FOR (refSpecialite) IS Specialite
);
/
CREATE OR REPLACE TYPE tResultat AS OBJECT (
	refMembre REF tMembre,
	refEpreuve REF tEpreuve,
	dateResultat date,
	rang NUMBER(2),
	points NUMBER(2)
);
/
CREATE TABLE Resultat OF tResultat (
    refMembre NOT NULL,
    refEpreuve NOT NULL,
    rang NOT NULL,
    SCOPE FOR (refMembre) IS Membre,
    SCOPE FOR (refEpreuve) IS Epreuve
);
/
CREATE OR REPLACE TYPE tInscription AS OBJECT (
	anneeInscription char(4),
	statutMembre varchar(20),
	refMembre REF tMembre
);
/
CREATE TABLE Inscription OF tInscription (
    anneeInscription NOT NULL,
    statutMembre NOT NULL,
    SCOPE FOR (refMembre) IS Membre
);
/
CREATE OR REPLACE TYPE tPaiement AS OBJECT (
	montantPaiement NUMBER(2),
	refInscription REF tInscription
);
/
CREATE TABLE Paiement OF tPaiement (
    montantPaiement NOT NULL,
    refInscription NOT NULL,
    SCOPE FOR (refInscription) IS Inscription
);
/
CREATE OR REPLACE TYPE tResponsabilite AS OBJECT (
    refMembre REF tMembre,
	refActivite REF tActivite,
	responsabiliteMembre varchar(200)
);
/
CREATE TABLE Responsabilite OF tResponsabilite (
    refMembre NOT NULL,
    refActivite NOT NULL,
    responsabiliteMembre NOT NULL,
    SCOPE FOR (refMembre) IS Membre,
    SCOPE FOR (refActivite) IS Activite
);
/
CREATE OR REPLACE TYPE tSpecialisation AS OBJECT (
    refMembre REF tMembre,
	refSpecialite REF tSpecialite
);
/
CREATE TABLE Specialisation OF tSpecialisation (
    refMembre NOT NULL,
    refSpecialite NOT NULL,
    SCOPE FOR (refMembre) IS Membre,
    SCOPE FOR (refSpecialite) IS Specialite
);
/
