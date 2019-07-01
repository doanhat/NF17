--Ecrire la requête qui permet d'afficher toutes les adresses des membres qui ont renseigné leur âge


SELECT m.infos.EXTRACT('/infos[age]/adresses').GETSTRINGVAL() AS Adresse FROM Membre m;
