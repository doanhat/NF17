BEGIN
/* insertion de données dans la table Membre */

INSERT INTO Membre VALUES (
    '{"nom" : "Dupont", "prenom" : "Jean"}',

    '{
        "adresses":{"adressedomicile" :"3 rue Benjamin Franklin, 60200 Compiègne",
                    "adressetravail":"2 Allée des Arbres, 60200 Compiègne"},
        "telephones" : {"teldomicile":"0344231235",
                        "teltravail":"0601780754"},
	"age" : 20

    }',
    '1');

INSERT INTO Membre VALUES (
    '{"nom" : "Giraud", "prenom" : "Elise"}',

    '{
        "adresses":{"adressedomicile" :"5 rue Benjamin Franklin, 60200 Compiègne",
                    "adressetravail":"10 Allée des Arbres, 60200 Compiègne"},
        "telephones" : {"teldomicile":"0235831688",
                        "teltravail":"0789023457"},
	"age" : 19
    }',
    '1');
INSERT INTO Membre VALUES (
    '{"nom" : "Bourdieu", "prenom" : "Pierre"}',
    '{
        "adresses":{"adressedomicile" :"41 rue Van Gogh, 60200 Compiègne",
                    "adressetravail":"17 Allée des Arbres, 60200 Compiègne"},
        "telephones" : {"teldomicile":"0325697534",
                        "teltravail":"0789023457"},
	"age" : 23
    }',
    '1'); 
    
INSERT INTO Membre VALUES (
    '{"nom" : "Dejardin", "prenom" : "Lucas"}',
    '{
        "adresses":{"adressedomicile" :"12 rue Hopper, 60200 Compiègne",
                    "adressetravail":"14 Allée des Arbres, 60200 Compiègne"},
        "telephones" : {"teldomicile":"0329654493",
                        "teltravail":"0698632551"},
	"age" : 23
    }',

    '1'); 
    
INSERT INTO Membre VALUES (
    '{"nom" : "Cabot", "prenom" : "Gauthier"}',

    '{
        "adresses":{"adressedomicile" :"16 rue Eugène Delacroix, 60200 Compiègne",
                    "adressetravail":"45 Allée des Arbres, 60200 Compiègne"},
        "telephones" : {"teldomicile":"0329654493",
                        "teltravail":"0698632551"},
	"age" : 23

    }',
    '1');
INSERT INTO Membre VALUES (
    '{"nom" : "Aamchi", "prenom" : "Nermine"}',

    '{
        "adresses":{"adressedomicile" :"6 rue Boticelli, 60200 Compiègne",
                    "adressetravail":"45 Allée des Arbres, 60200 Compiègne"},
        "telephones" : {"teldomicile":"0329654493",
                        "teltravail":"0698632551"},
	"age" : 34

    }',
    '1');
INSERT INTO Membre VALUES (
    '{"nom" : "Dachicourt", "prenom" : "Adeline"}',

    '{
        "adresses":{"adressedomicile" :"4 rue Léonard de Vinci, 60200 Compiègne",
                    "adressetravail":"56 Allée des Arbres, 60200 Compiègne"},
        "telephones" : {"teldomicile":"0329654493",
                        "teltravail":"0698632551"},
	"age" : 54

    }',
    '1');
INSERT INTO Membre VALUES (
    '{"nom" : "Cabanel", "prenom" : "Alicia"}',
    '{
        "adresses":{"adressedomicile" :"6 rue Paul Verlaine, 60200 Compiègne",
                    "adressetravail":"67 Allée des Arbres, 60200 Compiègne"},
        "telephones" : {"teldomicile":"0319654493",
                        "teltravail":"0319654493"},
	"age" : 54

    }',
    '1');
    
INSERT INTO Membre VALUES (
    '{"nom" : "Cabel", "prenom" : "Elise"}',
    '{
        "adresses":{"adressedomicile" :"23 rue du docteur Laennec, 60200 Compiègne",
                    "adressetravail":"78 Allée des Arbres, 60200 Compiègne"},
        "telephones" : {"teldomicile":"0327654453",
                        "teltravail":"0698631551"},
	"age" : 54

    }',
    '1');
INSERT INTO Membre VALUES (
    XMLTYPE('
        <identite>
            <nom>Cadet</nom>
            <prenom>Julie</prenom>
        </identite>
    '),
    '{
        "adresses":{"adressedomicile" :"98 rue de Fontenay, 60200 Compiègne",
                    "adressetravail":"79 Allée des Arbres, 60200 Compiègne"},
        "telephones" : {"teldomicile":"0321654293",
                        "teltravail":"0618622551"},
	"age" : 32

    }',
    '1');
INSERT INTO Membre VALUES (
    '{"nom" : "Cadet", "prenom" : "Julie"}',

    '{
        "adresses":{"adressedomicile" :"2 rue des Quatre Vents, 60200 Compiègne",
                    "adressetravail":"80 Allée des Arbres, 60200 Compiègne"},
        "telephones" : {"teldomicile":"0329654493",
                        "teltravail":"0692632551"},
	"age" : 32

    }',
    '1');
INSERT INTO Membre VALUES (
    '{"nom" : "Bottieau", "prenom" : "Jea,-Yves"}',

    '{
        "adresses":{"adressedomicile" :"3 rue Paul Cézanne, 60200 Compiègne",
                    "adressetravail":"80 Allée des Arbres, 60200 Compiègne"},
        "telephones" : {"teldomicile":"0329651493",
                        "teltravail":"0698639551"},
	"age" : 22

    }',
    '1');
INSERT INTO Membre VALUES (
    XMLTYPE('
        <identite>
            <nom>Claes</nom>
            <prenom>Patrick</prenom>
        </identite>
    '),
    '{
        "adresses":{"adressedomicile" :"10 rue Auguste Renoir, 60200 Compiègne",
                    "adressetravail":"81 Allée des Arbres, 60200 Compiègne"},
        "telephones" : {"teldomicile":"0329651493",
                        "teltravail":"0698632651"},
	"age" : 22

    }',
    '1');

INSERT INTO Membre VALUES (
    '{"nom" : "Flamand", "prenom" : "Fabrice"}',
    '{
        "adresses":{"adressedomicile" :"41 rue Jean Jaures, 60200 Compiègne",
                    "adressetravail":"64 Allée des Arbres, 60200 Compiègne"},
        "telephones" : {"teldomicile":"0329651493",
                        "teltravail":"0698632651"},
	"age" : 19

    }',
    '1');
INSERT INTO Membre VALUES (
    '{"nom" : "Claes", "prenom" : "Patrick"}',

    '{
        "adresses":{"adressedomicile" :"47 avenue Jean Macé, 60200 Compiègne",
                    "adressetravail":"68 Allée des Arbres, 60200 Compiègne"},
        "telephones" : {"teldomicile":"0329651493",
                        "teltravail":"0697632551"},
	"age" : 19

    }',
    '1');
INSERT INTO Membre VALUES (
'{"nom" : "Coruble", "prenom" : "Nicolas"}',
'{
      "adresses":{"adressedomicile" :"41 avenue Sartre, 60200 Compiègne",
                  "adressetravail":"98 Allée des Arbres, 60200 Compiègne"},
      "telephones" : {"teldomicile":"0329654493",
                      "teltravail":"0698635551"},
      "age":20
  }',
    '1');
    
INSERT INTO Membre VALUES (
  '{"nom" : "Chamion", "prenom" : "Sébastien"}',
  '{
        "adresses":{"adressedomicile" :"41 avenue Picasso, 60200 Compiègne",
                    "adressetravail":"123 Allée des Arbres, 60200 Compiègne"},
        "telephones" : {"teldomicile":"0321654413",
                        "teltravail":"0618635451"},
        "age":21
    }',
    '1');

INSERT INTO Membre VALUES (
'{"nom" : "Gouineau", "prenom" : "Lilian"}',
'{
      "adresses":{"adressedomicile" :"41 avenue Picasso, 60200 Compiègne",
                  "adressetravail":"123 Allée des Arbres, 60200 Compiègne"},
      "telephones" : {"teldomicile":"0329654493",
                      "teltravail":"0698632551"},
      "age":21
  }',
    '1');

INSERT INTO Membre VALUES (
'{"nom" : "Brianchon", "prenom" : "Marie-Laure"}',
'{
      "adresses":{"adressedomicile" :"41 avenue Picasso, 60200 Compiègne",
                  "adressetravail":"123 Allée des Arbres, 60200 Compiègne"},
      "telephones" : {"teldomicile":"0329654493",
                      "teltravail":"0698632551"},
      "age":21
  }',
    '1');

INSERT INTO Membre VALUES (
'{"nom" : "Laisney", "prenom" : "Laura"}',
'{
      "adresses":{"adressedomicile" :"41 avenue Picasso, 60200 Compiègne",
                  "adressetravail":"123 Allée des Arbres, 60200 Compiègne"},
      "telephones" : {"teldomicile":"0329654493",
                      "teltravail":"0698632551"},
      "age":32
  }',
    '1');

INSERT INTO Membre VALUES (
'{"nom" : "Mackinnon", "prenom" : "Leonora"}',
'{
      "adresses":{"adressedomicile" :"41 avenue Picasso, 60200 Compiègne",
                  "adressetravail":"123 Allée des Arbres, 60200 Compiègne"},
      "telephones" : {"teldomicile":"0329654493",
                      "teltravail":"0698632551"},
      "age":22
  }',
    '1');

INSERT INTO Membre VALUES (
'{"nom" : "Rucka", "prenom" : "Agathe"}',
'{
      "adresses":{"adressedomicile" :"41 avenue Picasso, 60200 Compiègne",
                  "adressetravail":"123 Allée des Arbres, 60200 Compiègne"},
      "telephones" : {"teldomicile":"0329654493",
                      "teltravail":"0698632551"},
      "age":22
  }',
    '1');

INSERT INTO Membre VALUES (
'{"nom" : "Stähli", "prenom" : "Laura"}',
'{
      "adresses":{"adressedomicile" :"41 avenue Picasso, 60200 Compiègne",
                  "adressetravail":"123 Allée des Arbres, 60200 Compiègne"},
      "telephones" : {"teldomicile":"0329654493",
                      "teltravail":"0698632551"},
      "age":26
  }',
    '1');

INSERT INTO Membre VALUES (
'{"nom" : "Augé", "prenom" : "Laura"}',
'{
      "adresses":{"adressedomicile" :"41 avenue Picasso, 60200 Compiègne",
                  "adressetravail":"123 Allée des Arbres, 60200 Compiègne"},
      "telephones" : {"teldomicile":"0329654493",
                      "teltravail":"0698632551"},
      "age":23
  }',
    '1');

INSERT INTO Membre VALUES (
'{"nom" : "Disbeaux", "prenom" : "Manon"}',
'{
      "adresses":{"adressedomicile" :"41 avenue Picasso, 60200 Compiègne",
                  "adressetravail":"123 Allée des Arbres, 60200 Compiègne"},
      "telephones" : {"teldomicile":"0329654493",
                      "teltravail":"0698632551"},
      "age":25
  }',

'1');
INSERT INTO Membre VALUES (
  '{"nom" : "Esnault", "prenom" : "Ambre"}',
  '{
        "adresses":{"adressedomicile" :"41 avenue Picasso, 60200 Compiègne",
                    "adressetravail":"123 Allée des Arbres, 60200 Compiègne"},
        "telephones" : {"teldomicile":"0329654493",
                        "teltravail":"0698632551"},
        "age":29
    }',
    '1');
/* insertion de données dans la table Activite */

INSERT INTO Activite VALUES (
'Présentation des compétitions du mois',
'Complexe Sportif : 2 rue Daniel Roche');

INSERT INTO Activite VALUES (
'Vente de gateaux',
'3 avenue Jan de Vries');

INSERT INTO Activite VALUES (
'Compétition de natation',
'Piscine de Pré Leroy');

INSERT INTO Activite VALUES (
'Compétition de judo',
'rue du port a belleville ');

INSERT INTO Activite VALUES (
'Compétition escrime',
'rue du bord de mer');
END;
/
DECLARE
oidf1 REF tActivite;
 oidf2 REF tActivite;
 oidact3 REF tActivite;
 oidact4 REF tActivite;
 oidact5 REF tActivite;
 m1 REF tMembre;
 m2 REF tMembre;
 m3 REF tMembre;
 m4 REF tMembre;
 m5 REF tMembre;
 m6 REF tMembre;
 m7 REF tMembre;
 m8 REF tMembre;
 m9 REF tMembre;
 m10 REF tMembre;
 m11 REF tMembre;
 m12 REF tMembre;
 m13 REF tMembre;
 m14 REF tMembre;
 m15 REF tMembre;
 m16 REF tMembre;
 m17 REF tMembre;
 m18 REF tMembre;
 m19 REF tMembre;
 m20 REF tMembre;
BEGIN
/* insertion de données dans la table Financement */
SELECT REF(m) INTO oidf1
FROM Activite m
WHERE m.titreActivite='Présentation des compétitions du mois';

SELECT REF(m) INTO oidf2
FROM Activite m
WHERE m.titreActivite='Vente de gateaux';
INSERT INTO Financement VALUES (
oidf1,
TO_DATE('29/03/2019', 'DD/MM/YYYY'),
'10,30');

INSERT INTO Financement VALUES (
oidf2,
TO_DATE('04/05/2019', 'DD/MM/YYYY'),
'10,30');

/* insertion de données dans la table OrganisateurExterne */

INSERT INTO OrganisateurExterne VALUES (
'Club Sportif de Beauvais',
'2 avenue Denis Woronoff',
'Louis',
'Bruyon',
'0618976342');

INSERT INTO OrganisateurExterne VALUES (
'Club Sportif de Noyon',
'12 rue Hilaire Perez',
'Julie',
'Campo',
'0656984312');

/* insertion de données dans la table Competition */

SELECT REF(f) INTO oidact3
FROM Activite f
WHERE f.titreActivite='Compétition de natation';
SELECT REF(f) INTO oidact4
FROM Activite f
WHERE f.titreActivite='Compétition de judo';
SELECT REF(f) INTO oidact5
FROM Activite f
WHERE f.titreActivite='Compétition escrime';


SELECT REF(m) INTO m1
FROM Membre m
WHERE m.nom='Aamchi'
AND m.prenom='Nermine';

SELECT REF(m) INTO m2
FROM Membre m
WHERE m.nom='Dachicourt'
AND m.prenom='Adeline';

SELECT REF(m) INTO m3
FROM Membre m
WHERE m.nom='Cabanel'
AND m.prenom='Alicia';

SELECT REF(m) INTO m4
FROM Membre m
WHERE m.nom='Cabel'
AND m.prenom='Elise';

SELECT REF(m) INTO m5
FROM Membre m
WHERE m.nom='Cadet'
AND m.prenom='Julie';

SELECT REF(m) INTO m6
FROM Membre m
WHERE m.nom='Bottieau'
AND m.prenom='Jean-Yves';

SELECT REF(m) INTO m7
FROM Membre m
WHERE m.nom='Bottieau'
AND m.prenom='Joachim';

SELECT REF(m) INTO m8
FROM Membre m
WHERE m.nom='Flamand'
AND m.prenom='Fabrice';

SELECT REF(m) INTO m9
FROM Membre m
WHERE m.nom='Claes'
AND m.prenom='Patrick';

SELECT REF(m) INTO m10
FROM Membre m
WHERE m.nom='Tambour'
AND m.prenom='Bernard';

SELECT REF(m) INTO m11
FROM Membre m
WHERE m.nom='Bimont'
AND m.prenom='Alain';

SELECT REF(m) INTO m12
FROM Membre m
WHERE m.nom='Bimont'
AND m.prenom='Raphaël';

SELECT REF(m) INTO m13
FROM Membre m
WHERE m.nom='Coruble'
AND m.prenom='Nicolas';

SELECT REF(m) INTO m14
FROM Membre m
WHERE m.nom='Champion'
AND m.prenom='Sebastien';

SELECT REF(m) INTO m15
FROM Membre m
WHERE m.nom='Gouineau'
AND m.prenom='Lilian';

SELECT REF(m) INTO m16
FROM Membre m
WHERE m.nom='Dupont'
AND m.prenom='Jean';

SELECT REF(m) INTO m17
FROM Membre m
WHERE m.nom='Giraud'
AND m.prenom='Elise';

SELECT REF(m) INTO m18
FROM Membre m
WHERE m.nom='Bourdieu'
AND m.prenom='Pierre';

SELECT REF(m) INTO m19
FROM Membre m
WHERE m.nom='Dejardin'
AND m.prenom='Lucas';

SELECT REF(m) INTO m20
FROM Membre m
WHERE m.nom='Cabot'
AND m.prenom='Gauthier';

INSERT INTO Competition VALUES (
oidact4,
TO_DATE('17/04/2019', 'DD/MM/YYYY'),
TO_DATE('18/04/2019', 'DD/MM/YYYY'),
'salle polyvalente de belleville',
tListeEquipes(tEquipe(
'Fra',
XMLTYPE ('
    <joueurs>
        <joueur>
            <nom>
              Aamchi
            </nom>
            <prenom>
              Nermine
            </prenom>
        </joueur>
        <joueur>
            <nom>
              Dachicourt
            </nom>
            <prenom>
              Adeline
            </prenom>
        </joueur>
        <joueur>
            <nom>
              Cabanel
            </nom>
            <prenom>
              Alicia
            </prenom>
        </joueur>
        <joueur>
            <nom>
              Cabel
            </nom>
            <prenom>
              Elise
            </prenom>
        </joueur>
        <joueur>
            <nom>
             Cadet
            </nom>
            <prenom>
              Julie
            </prenom>
        </joueur>
    </joueurs>
')
),
tEquipe(
'equipe de Belgique',
XMLTYPE ('
    <joueurs>
        <nomEquipe>
            equipe de Belgique
        </nomEquipe>
        <joueur>
            <nom>
             Bottieau
            </nom>
            <prenom>
              Jean-Yves
            </prenom>
        </joueur>
        <joueur>
            <nom>
             Bottieau
            </nom>
            <prenom>
              Joachim
            </prenom>
        </joueur>
        <joueur>
            <nom>
             Flamand
            </nom>
            <prenom>
             Fabrice
            </prenom>
        </joueur>
        <joueur>
            <nom>
              Claes
            </nom>
            <prenom>
              Patrick
            </prenom>
        </joueur>
        <joueur>
            <nom>
             Tambour
            </nom>
            <prenom>
              Bernard
            </prenom>
        </joueur>
    </joueurs>
'),
)
)
);


INSERT INTO Competition VALUES (
oidact5,
TO_DATE('19/04/2019', 'DD/MM/YYYY'),
TO_DATE('19/04/2019', 'DD/MM/YYYY'),
'salle d''escrime Dieppe',
tListeEquipes(tEquipe(
'FLDIEPPE Homme',
XMLTYPE ('
    <joueurs>
        <joueur>
            <nom>
              Bimont
            </nom>
            <prenom>
              Alain
            </prenom>
        </joueur>
        <joueur>
            <nom>
              Bimont
            </nom>
            <prenom>
              Raphaël
            </prenom>
        </joueur>
        <joueur>
            <nom>
              Coruble
            </nom>
            <prenom>
              Nicolas
            </prenom>
        </joueur>
        <joueur>
            <nom>
              Champion
            </nom>
            <prenom>
              Sebastien
            </prenom>
        </joueur>
        <joueur>
            <nom>
              Gouineau
            </nom>
            <prenom>
              Lilian
            </prenom>
        </joueur>
    </joueurs>
')
)
)
);

INSERT INTO Competition VALUES (
oidact3,
TO_DATE('12/04/2019', 'DD/MM/YYYY'),
TO_DATE('12/04/2019', 'DD/MM/YYYY'),
'Piscine de Pré Leroy',
tListeEquipes(tEquipe(
'equipe de France',
XMLTYPE ('
    <joueurs>
        <joueur>
            <nom>
              Dupont
            </nom>
            <prenom>
              Jean
            </prenom>
        </joueur>
        <joueur>
            <nom>
              Giraud
            </nom>
            <prenom>
              Elise
            </prenom>
        </joueur>
        <joueur>
            <nom>
              Bourdieu
            </nom>
            <prenom>
              Pierre
            </prenom>
        </joueur>
        <joueur>
            <nom>
              Dejardin
            </nom>
            <prenom>
              Lucas
            </prenom>
        </joueur>
        <joueur>
            <nom>
              Cabot
            </nom>
            <prenom>
              Gauthier
            </prenom>
        </joueur>
    </joueurs>
')
)
)
);


/* insertion de données dans la table Inscription */

INSERT INTO Inscription VALUES (
'2017',
'professionnel',
m1);

INSERT INTO Inscription VALUES (
'2018',
'professionnel',
m2);

INSERT INTO Inscription VALUES (
'2019',
'professionnel',
m3);
INSERT INTO Inscription VALUES (
'2017',
'professionnel',
m4);

INSERT INTO Inscription VALUES (
'2018',
'professionnel',
m5);

INSERT INTO Inscription VALUES (
'2019',
'professionnel',
m6);
INSERT INTO Inscription VALUES (
'2017',
'professionnel',
m7);

INSERT INTO Inscription VALUES (
'2018',
'professionnel',
m8);

INSERT INTO Inscription VALUES (
'2019',
'professionnel',
m9);
INSERT INTO Inscription VALUES (
'2019',
'professionnel',
m10);
INSERT INTO Inscription VALUES (
'2017',
'professionnel',
m11);

INSERT INTO Inscription VALUES (
'2018',
'professionnel',
m12);

INSERT INTO Inscription VALUES (
'2019',
'professionnel',
m13);
INSERT INTO Inscription VALUES (
'2017',
'professionnel',
m14);

INSERT INTO Inscription VALUES (
'2018',
'professionnel',
m15);

INSERT INTO Inscription VALUES (
'2019',
'professionnel',
m16);
INSERT INTO Inscription VALUES (
'2017',
'professionnel',
m17);

INSERT INTO Inscription VALUES (
'2018',
'professionnel',
m18);

INSERT INTO Inscription VALUES (
'2019',
'professionnel',
m19);
INSERT INTO Inscription VALUES (
'2019',
'professionnel',
m20);
END;
/
DECLARE
 oidact5 REF tActivite;
oidact3 REF tActivite;
 oidact4 REF tActivite;
c1 REF tCompetition;
 o1 REF tOrganisateurExterne;
 c2 REF tCompetition;
 o2 REF tOrganisateurExterne;
 c3 REF tCompetition;
BEGIN
/* insertion de données dans la table CompetitionExterne */
SELECT REF(f) INTO oidact3
FROM Activite f
WHERE f.titreActivite='Compétition de natation';
SELECT REF(f) INTO oidact5
FROM Activite f
WHERE f.titreActivite='Compétition escrime';
SELECT REF(f) INTO oidact4
FROM Activite f
WHERE f.titreActivite='Compétition de judo';
SELECT REF(m) INTO c1
FROM Competition m
WHERE m.refActivite=oidact3;

SELECT REF(m) INTO o1
FROM OrganisateurExterne m
WHERE m.nomResponsable ='Louis'
AND m.prenomResponsable='Bruyon';

SELECT REF(m) INTO c2
FROM Competition m
WHERE m.refActivite=oidact5;

SELECT REF(m) INTO o2
FROM OrganisateurExterne m
WHERE m.nomResponsable='Julie'
AND m.prenomResponsable='Campo';



INSERT INTO CompetitionExterne VALUES (
c1,
o1);

INSERT INTO CompetitionExterne VALUES (
c2,
o2);

 /* insertion de données dans la table CompetitionInterne */
SELECT REF(m) INTO c3
FROM Competition m
WHERE m.refActivite=oidact4;

INSERT INTO CompetitionInterne VALUES (
c3);

/* insertion de données dans la table Discipline */

INSERT INTO Discipline VALUES (
'Judo');

INSERT INTO Discipline VALUES (
'Course');

INSERT INTO Discipline VALUES (
'Football');
END;
/
DECLARE
 d1 REF tDiscipline;
 d2 REF tDiscipline;
 d3 REF tDiscipline;
BEGIN
/* insertion de données dans la table Specialite */
SELECT REF(m) INTO d1
FROM Discipline m
WHERE m.nomDiscipline='Judo';

SELECT REF(m) INTO d2
FROM Discipline m
WHERE m.nomDiscipline='Course';

SELECT REF(m) INTO d3
FROM Discipline m
WHERE m.nomDiscipline='Football';

INSERT INTO Specialite VALUES (
'noir',
d1);

INSERT INTO Specialite VALUES (
'blanche',
d1);

INSERT INTO Specialite VALUES(
'Relais',
d2);

INSERT INTO Specialite VALUES (
'100 mètres haies',
d2);
END;
/
DECLARE
 c3 REF tCompetition;
s1 REF tSpecialite;
 s2 REF tSpecialite;
 oidact4 REF tActivite;
BEGIN
SELECT REF(f) INTO oidact4
FROM Activite f
WHERE f.titreActivite='Compétition de judo';
SELECT REF(m) INTO c3
FROM Competition m
WHERE m.refActivite=oidact4;
/* insertion de données dans la table Epreuve */
SELECT REF(m) INTO s1
FROM Specialite m
WHERE m.nomSpecialite='noir';

SELECT REF(m) INTO s2
FROM Specialite m
WHERE m.nomSpecialite='blanche';

INSERT INTO Epreuve VALUES (
c3,
TO_DATE('17/04/2019', 'DD/MM/YYYY'),
'10,30',
s1);

INSERT INTO Epreuve VALUES (
c3,
TO_DATE('17/04/2019', 'DD/MM/YYYY'),
'14,00',
s2);

INSERT INTO Epreuve VALUES (
c3,
TO_DATE('17/04/2019', 'DD/MM/YYYY'),
'10,35',
s1);

INSERT INTO Epreuve VALUES (
c3,
TO_DATE('18/04/2019', 'DD/MM/YYYY'),
'14,00',
s2);

INSERT INTO Epreuve VALUES (
c3,
TO_DATE('17/04/2019', 'DD/MM/YYYY'),
'12,30',
s1);

INSERT INTO Epreuve VALUES (
c3,
TO_DATE('18/04/2019', 'DD/MM/YYYY'),
'15,00',
s2);
END;
/
DECLARE
m1 REF tMembre;
 m2 REF tMembre;
 m3 REF tMembre;
 m4 REF tMembre;
 m5 REF tMembre;
 m6 REF tMembre;
 m7 REF tMembre;
 m8 REF tMembre;
 m9 REF tMembre;
 m10 REF tMembre;
 s1 REF tSpecialite;
  s2 REF tSpecialite;
i1 REF tInscription;
 i2 REF tInscription;
  e1 REF tEpreuve;
 e2 REF tEpreuve;
  oidact4 REF tActivite;
BEGIN
SELECT REF(f) INTO oidact4
FROM Activite f
WHERE f.titreActivite='Compétition de judo';
SELECT REF(m) INTO s2
FROM Specialite m
WHERE m.nomSpecialite='blanche';

SELECT REF(m) INTO m1
FROM Membre m
WHERE m.nom='Aamchi'
AND m.prenom='Nermine';

SELECT REF(m) INTO m2
FROM Membre m
WHERE m.nom='Dachicourt'
AND m.prenom='Adeline';

SELECT REF(m) INTO m3
FROM Membre m
WHERE m.nom='Cabanel'
AND m.prenom='Alicia';

SELECT REF(m) INTO m4
FROM Membre m
WHERE m.nom='Cabel'
AND m.prenom='Elise';

SELECT REF(m) INTO m5
FROM Membre m
WHERE m.nom='Cadet'
AND m.prenom='Julie';

SELECT REF(m) INTO m6
FROM Membre m
WHERE m.nom='Bottieau'
AND m.prenom='Jean-Yves';

SELECT REF(m) INTO m7
FROM Membre m
WHERE m.nom='Bottieau'
AND m.prenom='Joachim';

SELECT REF(m) INTO m8
FROM Membre m
WHERE m.nom='Flamand'
AND m.prenom='Fabrice';

SELECT REF(m) INTO m9
FROM Membre m
WHERE m.nom='Claes'
AND m.prenom='Patrick';

SELECT REF(m) INTO m10
FROM Membre m
WHERE m.nom='Tambour'
AND m.prenom='Bernard';
SELECT REF(m) INTO s1
FROM Specialite m
WHERE m.nomSpecialite='noir';
/* insertion de données dans la table Resultat */
SELECT REF(m) INTO e1
FROM Epreuve m
WHERE m.refSpecialite=s2
AND m.heureEpreuve='15,00'
AND m.dateEpreuve='18/04/2019';

SELECT REF(m) INTO e2
FROM Epreuve m
WHERE m.refSpecialite=s1
AND m.heureEpreuve='12,30'
AND m.dateEpreuve='17/04/2019';



INSERT INTO Resultat VALUES (
m1,
e1,
TO_DATE('18/04/2019', 'DD/MM/YYYY'),
'1',
'12');

INSERT INTO Resultat VALUES (
m2,
e2,
TO_DATE('17/04/2019', 'DD/MM/YYYY'),
'2',
'8');



/* insertion de données dans la table Paiement */
SELECT REF(m) INTO i1
FROM Inscription m
WHERE m.refMembre=m1;

SELECT REF(m) INTO i2
FROM Inscription m
WHERE m.refMembre=m2;

INSERT INTO Paiement VALUES (
'25',
i1);

INSERT INTO Paiement VALUES (
'25',
i2);

/* insertion de données dans la table Responsabilite */

INSERT INTO Responsabilite VALUES (
m1,
oidact4,
'responsable des câbles');

/* insertion de données dans la table Specialisation */

INSERT INTO Specialisation VALUES (
m1,
s1);

INSERT INTO Specialisation VALUES (
m2,
s1);
INSERT INTO Specialisation VALUES (
m3,
s1);

INSERT INTO Specialisation VALUES (
m4,
s1);
INSERT INTO Specialisation VALUES (
m5,
s1);

INSERT INTO Specialisation VALUES (
m6,
s1);
INSERT INTO Specialisation VALUES (
m7,
s1);

INSERT INTO Specialisation VALUES (
m8,
s1);
INSERT INTO Specialisation VALUES (
m9,
s1);

INSERT INTO Specialisation VALUES (
m10,
s1);

END;
/
