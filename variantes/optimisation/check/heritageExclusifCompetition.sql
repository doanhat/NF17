
INSERT INTO Activite (numeroActivite, titreActivite, adresseActivite) VALUES (
'41',
'Compétition Escrime',
'9 rue du vieux port');
INSERT INTO Competition (numeroActivite,dateDebut,dateFin,lieuCompetition) VALUES 
(
'41',
TO_DATE('18/04/2019', 'DD/MM/YYYY'),
TO_DATE('18/04/2019', 'DD/MM/YYYY'),
'salle Jacque Prevert');
INSERT INTO OrganisateurExterne (numeroOrganisateur,nomOrganisateur,adresse,nomResponsable,prenomResponsable,telephoneResponsable) VALUES 
(
'41',
'Club Sportif de Noyon',
'12 rue Hilaire Perez',
'Julie',
'Michelet',
'0656984312');
INSERT INTO CompetitionExterne41 (numeroActivite,organisateurExterne) VALUES 
(
'41',
'41');


INSERT INTO CompetitionInterne (numeroActivite) VALUES 
(
'41');
