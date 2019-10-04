
INSERT INTO Activite (numeroActivite, titreActivite, adresseActivite) VALUES (
'45',
'Compétition badminton',
'76 rue de normandie');

INSERT INTO Competition (numeroActivite,dateDebut,dateFin,lieuCompetition) VALUES 
(
'45',
TO_DATE('18/04/2019', 'DD/MM/YYYY'),
TO_DATE('15/04/2019', 'DD/MM/YYYY'),
'salle prevot');
