/* insertion de données dans la table Membre */

INSERT INTO Membre VALUES (
'1',
'Dupont',
'Jean',
TO_DATE('17/03/1990', 'DD/MM/YYYY'),
'3 rue Benjamin Franklin',
listTel (0344231235,0601780754),
'1');

INSERT INTO Membre VALUES (
'2',
'Giraud',
'Elise',
TO_DATE('23/08/1999', 'DD/MM/YYYY'),
'25 rue du four',
listTel (0235831688,0789023457),
'1');

INSERT INTO Membre VALUES (
'3',
'Bourdieu',
'Pierre',
TO_DATE('01/03/1987', 'DD/MM/YYYY'),
'41 avenue Pablo Picasso',
listTel (0325697534,0789023457),
'1');
INSERT INTO Membre VALUES (
'4',
'Dejardin',
'Lucas',
TO_DATE('21/11/1998', 'DD/MM/YYYY'),
'41 avenue Pablo Picasso',
listTel (0329397534,0698763251),
'1');
INSERT INTO Membre VALUES (
'5',
'Cabot',
'Gauthier',
TO_DATE('05/09/1998', 'DD/MM/YYYY'),
'41 avenue Picasso',
listTel (0329654493,0698632551),
'1');

/* insertion de données dans la table Activite */

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


/* insertion de données dans la table Financement */

INSERT INTO Financement VALUES (
'1',
TO_DATE('29/03/2019', 'DD/MM/YYYY'),
'10,30');
 
INSERT INTO Financement VALUES (
'2',
TO_DATE('04/05/2019', 'DD/MM/YYYY'),
'10,30');
 
 
/* insertion de données dans la table OrganisateurExterne */

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


/* insertion de données dans la table Competition */

INSERT INTO Competition VALUES (
'4',
TO_DATE('17/04/2019', 'DD/MM/YYYY'),
TO_DATE('18/04/2019', 'DD/MM/YYYY'),
'salle polyvalente de belleville',
listEquipe(typeEquipe(
'equipe de France',
listMembre(
typeMembre(1,'Aamchi','Nermine'),
typeMembre(2,'Dachicourt','Adeline'),
typeMembre(3,'Cabanel','Alicia'),
typeMembre(4,'Cabel','Elise'),
typeMembre(5,'Cadet','Julie'))
),
typeEquipe(
'equipe de Belgique',
listMembre(
typeMembre(1,'Bottieau','Jean-Yves'),
typeMembre(2,'Bottieau','Joachim'),
typeMembre(3,'Flamand','Fabrice'),
typeMembre(4,'Claes','Patrick'),
typeMembre(5,'Tambour','Bernard'))
)
)
);

INSERT INTO Competition VALUES (
'5',
TO_DATE('19/04/2019', 'DD/MM/YYYY'),
TO_DATE('19/04/2019', 'DD/MM/YYYY'),
'salle d''escrime Dieppe',
listEquipe(typeEquipe(
'FLDIEPPE Homme',
listMembre(
typeMembre(1,'Bimont','Alain'),
typeMembre(2,'Bimont','Raphaël'),
typeMembre(3,'Coruble','Nicolas'),
typeMembre(4,'Champion','Sebastien'),
typeMembre(5,'Gouineau','Lilian'))
),
typeEquipe(
'FLDIEPPE Femme',
listMembre(
typeMembre(1,'Brianchon','Marie-Laure'),
typeMembre(2,'Laisney','Laura'),
typeMembre(3,'Mackinnon','Leonora'),
typeMembre(4,'Rucka','Agathe'),
typeMembre(5,'Stähli','Laura'))
)
)
);

INSERT INTO Competition VALUES (
'3',
TO_DATE('12/04/2019', 'DD/MM/YYYY'),
TO_DATE('12/04/2019', 'DD/MM/YYYY'),
'Piscine de Pré Leroy',
listEquipe(typeEquipe(
'equipe de France',
listMembre(
typeMembre(1,'Dupont','Jean'),
typeMembre(2,'Giraud','Elise'),
typeMembre(3,'Bourdieu','Pierre'),
typeMembre(4,'Dejardin','Lucas'),
typeMembre(5,'Cabot','Gauthier'))
),
typeEquipe(
'equipe de Suisse',
listMembre(
typeMembre(1,'Annequin','Marie'),
typeMembre(2,'Augé','Laura'),
typeMembre(3,'Bravard','Camille'),
typeMembre(4,'Disbeaux','Manon'),
typeMembre(5,'Esnault','Ambre'))
)
)
);


/* insertion de données dans la table CompetitionExterne */

INSERT INTO CompetitionExterne VALUES (
'4',
'1');

INSERT INTO CompetitionExterne VALUES (
'5',
'2');


/* insertion de données dans la table CompetitionInterne */

INSERT INTO CompetitionInterne VALUES (
'3');


/* insertion de données dans la table Discipline */

INSERT INTO Discipline VALUES (
'1',
'Natation');

INSERT INTO Discipline VALUES (
'2',
'Course');

INSERT INTO Discipline VALUES (
'3',
'Football');


/* insertion de données dans la table Specialite */

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


/* insertion de données dans la table Epreuve */

INSERT INTO Epreuve VALUES (
'3',
'1',
TO_DATE('12/04/2019', 'DD/MM/YYYY'),
'10,30',
'1');

INSERT INTO Epreuve VALUES (
'3',
'2',
TO_DATE('12/04/2019', 'DD/MM/YYYY'),
'14,00',
'2');


/* insertion de données dans la table Resultat */

INSERT INTO Resultat VALUES (
'1',
'1',
'3',
'1',
TO_DATE('12/04/2019', 'DD/MM/YYYY'),
'1',
'12');

INSERT INTO Resultat VALUES (
'2',
'2',
'3',
'1',
TO_DATE('12/04/2019', 'DD/MM/YYYY'),
'2',
'8');


/* insertion de données dans la table Inscription */

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


/* insertion de données dans la table Paiement */

INSERT INTO Paiement VALUES (
'1',
'25',
'1');

INSERT INTO Paiement VALUES (
'2',
'25',
'2');


/* insertion de données dans la table Responsabilite */

INSERT INTO Responsabilite VALUES (
'1',
'3',
'responsable des câbles');


/* insertion de données dans la table Specialisation */

INSERT INTO Specialisation VALUES (
'1',
'1');

INSERT INTO Specialisation VALUES (
'2',
'1');




