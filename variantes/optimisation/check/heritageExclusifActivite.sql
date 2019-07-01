INSERT INTO Activite (numeroActivite, titreActivite, adresseActivite) VALUES (
'42',
'Compétition escalade',
'9 rue de labbaye');

INSERT INTO Competition (numeroActivite,dateDebut,dateFin,lieuCompetition) VALUES 
(
'42',
TO_DATE('18/04/2019', 'DD/MM/YYYY'),
TO_DATE('18/04/2019', 'DD/MM/YYYY'),
'salle Jacque Prevert');

INSERT INTO Financement (numeroActivite,dateActivite,heureActivite) VALUES 
(
'42',
TO_DATE('04/05/2019', 'DD/MM/YYYY'),
'11:00');
INSERT INTO CompetitionInterne (numeroActivite) VALUES 
(
'42');
