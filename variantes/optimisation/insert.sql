/* insertion de données dans la table Membre1 */
BEGIN TRANSACTION;

INSERT INTO Membre1 VALUES (
'1',
'Dupont',
'Jean',
'0601780754');

INSERT INTO Membre1 VALUES (
'2',
'Giraud',
'Elise',
'0789023457');

INSERT INTO Membre1 VALUES (
'3',
'Bourdieu',
'Pierre',
'0623456122');
/* insertion de données dans la table Membre2 */
COMMIT;

BEGIN TRANSACTION;
INSERT INTO Membre2 VALUES (
'1',
TO_DATE('17/03/1990', 'DD/MM/YYYY'),
'3 rue Benjamin Franklin',
'1');

INSERT INTO Membre2 VALUES (
'2',
TO_DATE('23/08/1999', 'DD/MM/YYYY'),
'25 rue du four',
'1');

INSERT INTO Membre2 VALUES (
'3',
TO_DATE('01/03/1987', 'DD/MM/YYYY'),
'41 avenue Pablo Picasso',
'1');
COMMIT;

/* insertion de données dans la table Activite */
BEGIN TRANSACTION;
INSERT INTO Activite VALUES (
'1',
'Présentation des compétitions du mois',
'Complexe Sportif : 2 rue Daniel Roche');

INSERT INTO Activite VALUES (
'2',
'Vente de gateaux',
'3 avenue Jan de Vries');

INSERT INTO Activite VALUES (
'3',
'Compétition de natation',
'Piscine de Pré Leroy');
INSERT INTO Activite VALUES (
'4',
'Compétition de judo',
'rue du port a belleville ');
INSERT INTO Activite VALUES (
'5',
'Compétition escrime',
'rue du bord de mer');
COMMIT;

/* insertion de données dans la table Financement */
BEGIN TRANSACTION;
INSERT INTO Financement VALUES (
'1',
TO_DATE('29/03/2019', 'DD/MM/YYYY'),
'13:30');
 
INSERT INTO Financement VALUES (
'2',
TO_DATE('04/05/2019', 'DD/MM/YYYY'),
'11:00');
COMMIT; 
 
/* insertion de données dans la table OrganisateurExterne */
BEGIN TRANSACTION;
INSERT INTO OrganisateurExterne VALUES (
'1',
'Club Sportif de Beauvais',
'2 avenue Denis Woronoff',
'Louis',
'Bruyon',
'0618976342');

INSERT INTO OrganisateurExterne VALUES (
'2',
'Club Sportif de Noyon',
'12 rue Hilaire Perez',
'Julie',
'Campo',
'0656984312');
COMMIT;

/* insertion de données dans la table Competition */
BEGIN TRANSACTION;
INSERT INTO Competition VALUES (
'4',
TO_DATE('17/04/2019', 'DD/MM/YYYY'),
TO_DATE('18/04/2019', 'DD/MM/YYYY'),
'Compétition de Judo');

INSERT INTO Competition VALUES (
'5',
TO_DATE('19/04/2019', 'DD/MM/YYYY'),
TO_DATE('19/04/2019', 'DD/MM/YYYY'),
'Compétition d`escrime');

INSERT INTO Competition VALUES (
'3',
TO_DATE('12/04/2019', 'DD/MM/YYYY'),
TO_DATE('12/04/2019', 'DD/MM/YYYY'),
'Piscine de Pré Leroy');
COMMIT;

/* insertion de données dans la table CompetitionExterne */
BEGIN TRANSACTION;
INSERT INTO CompetitionExterne1 VALUES (
'4',
'1');
COMMIT;

BEGIN TRANSACTION;
INSERT INTO CompetitionExterne2 VALUES (
'5',
'2');
COMMIT;

/* insertion de données dans la table CompetitionInterne */
BEGIN TRANSACTION;
INSERT INTO CompetitionInterne VALUES (
'3');
COMMIT;

/* insertion de données dans la table Discipline */
BEGIN TRANSACTION;
INSERT INTO Discipline VALUES (
'1',
'Natation');

INSERT INTO Discipline VALUES (
'2',
'Course');

INSERT INTO Discipline VALUES (
'3',
'Football');
COMMIT;

/* insertion de données dans la table Specialite */
BEGIN TRANSACTION;
INSERT INTO Specialite VALUES (
'1',
'Natation synchronisée',
'1');

INSERT INTO Specialite VALUES (
'2',
'Crawl',
'1');

INSERT INTO Specialite VALUES(
'3',
'Relais',
'2');

INSERT INTO Specialite VALUES (
'4',
'100 mètres haies',
'2');
COMMIT;

/* insertion de données dans la table Epreuve */
BEGIN TRANSACTION;
INSERT INTO Epreuve VALUES (
'3',
'1',
TO_DATE('12/04/2019', 'DD/MM/YYYY'),
'10:30',
'1');

INSERT INTO Epreuve VALUES (
'3',
'2',
TO_DATE('12/04/2019', 'DD/MM/YYYY'),
'14:00',
'2');
COMMIT;

/* insertion de données dans la table Resultat */
BEGIN TRANSACTION;
INSERT INTO Resultat VALUES (
'1',
'3',
'1',
TO_DATE('12/04/2019', 'DD/MM/YYYY'),
'1',
'12');

INSERT INTO Resultat VALUES (
'2',
'3',
'1',
TO_DATE('12/04/2019', 'DD/MM/YYYY'),
'2',
'8');
COMMIT;

/* insertion de données dans la table Inscription */
BEGIN TRANSACTION;
INSERT INTO Inscription VALUES (
'1',
'2017',
'professionnel',
'1');

INSERT INTO Inscription VALUES (
'2',
'2018',
'professionnel',
'2');

INSERT INTO Inscription VALUES (
'3',
'2019',
'professionnel',
'3');
COMMIT;

/* insertion de données dans la table Paiement */
BEGIN TRANSACTION;
INSERT INTO Paiement VALUES (
'1',
'25',
'1');

INSERT INTO Paiement VALUES (
'2',
'25',
'2');
COMMIT;

/* insertion de données dans la table Responsabilite */
BEGIN TRANSACTION;
INSERT INTO Responsabilite VALUES (
'1',
'3',
'responsable des câbles');
COMMIT;

/* insertion de données dans la table Specialisation */
BEGIN TRANSACTION;
INSERT INTO Specialisation VALUES (
'1',
'1');

INSERT INTO Specialisation VALUES (
'2',
'1');
COMMIT;
BEGIN TRANSACTION;
REFRESH MATERIALIZED VIEW vmMembreSolde; 
CREATE INDEX ON Membre1 (nom);
COMMIT;


