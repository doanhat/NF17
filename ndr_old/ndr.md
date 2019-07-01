# Rendu du 30/03 - Note de révision

## Modifications par rapport à la MLD
* En accord avec le commanditaire, nous avons uniquement considéré des héritages par référence. Un peu plus tard, nous comparerons différents héritages en comparant les temps d'exécution de différentes requêtes.
* Nous avons décidé de changer le type associé à etatDossier dans la table Membre. Il n'y a de ce fait pas de contrainte de type etatDossier = 1 ou etatDossier = 0 à vérifier. Nous avons adopté la convention selon laquelle '1' signifie que le dossier est finalisé et le membre est actif, et '0' le membre est inactif. 
* Nous avons changé les _numeric(10)_ par des _char(10)_ afin que les 0 initiaux dans les numéros de téléphone soient conservés (exemple : 0123456789 aurait donné en _numeric(10)_ : 123456789).
* A ce stade, nous n'avons pas géré _Membre.etatDossier_ ni _Inscription.fraisInscription_ comme étant des méthodes.

## Vues permettant de reconstituer les classes perdues lors du passage à la MLD
On notera la présence des vues __vFinancement__, __vCompetition__, __vCompetitionInterne__ et __vCompetitionExterne__, correspondant respectivement aux classes _Financement_, _Competition_, _CompetitionInterne_ et _CompetitionExterne_.

## Vues permettant de vérifier des contraintes
Dans notre MLD, nous avions indiqué des contraintes permettant de traduire des contraintes présentes dans la MCD, à savoir :
* le fait que les classes _Activite_ et _Competition_ étaient des classes abstraites
* le fait que l'héritage de ces deux classes (respectivement (_Financement_ et _Competition_) et (_CompetitionInterne_ et _CompetitionExterne_)) est un héritage exclusif.

Or, il est impossible de s'assurer de ces contraintes sous Postgres. En revanche, on peut le vérifier indirectement à travers des vues, à savoir __cActiviteAbstraite__ et __cCompetitionAbstraite__ pour les contraintes de classe abstraite, et __cActExcl__ et __cCompetExcl__ pour les contraintes d'héritage exclusif.

## Dossier _check_

Ce dossier contient des fichiers contenant des commandes de nouvelles entrées (_INSERT_) qui ne respectent pas certaines contraintes, et qui vérifient donc le bon fonctionnement de notre base.
* Soit la requête est directement refusée car elle n'est pas en accord avec un _CHECK_ présent dans _create.sql_. C'est par exemple le cas si l'on cherche à insérer une compétition avec (dateDebut > dateFin). C'est également le cas si l'on cherche à insérer une entrée rompant la contrainte d'unicité de la clé primaire (c'est ce qui a été fait dans les fichiers comprenant le terme "duplique" dans leur titre).
* Soit la requête est acceptée, car cette contrainte n'est pas vérifiable. On est alors dans le cas du dernier paragraphe (_Vues permettant de vérifier des contraintes_), et l'on pourra alors constater que la vue concernée retournera bien le numéro d'activité qui ne respecte pas la contrainte que se charge de vérifier la vue. 

## Fichier _drop.sql_ 

Ce fichier est à exécuter avant d'exécuter le fichier _create.sql_, afin de supprimer les tables et vues qui avaient éventuellement le même nom.

