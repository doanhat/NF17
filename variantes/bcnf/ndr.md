# Rendu du 06/04 - Note de révision
## Correction d'une erreur
Nous avons relevé une erreur dans notre précédent MLD - qui s'est par ailleurs répercutée dans notre LDD. __numeroActivite__ de __CompetitionInterne__ et de __CompetitionExterne__ étaient des clefs étrangères vers __Activité__ au lieu de la table __Competition__. Cette erreur a été rectifiée.
## Modifications de la MLD

### Ajout d'une contrainte d'unicité

* Nous nous sommes rendu compte que _Resultat.rang_ devrait, pour une compétition donnée, être unique. Nous avons donc ajouté cette contrainte.
### Maintien de certaines clefs artificielles
En accord avec le commanditaire, nous n'avons considéré aucune clé artificielle _a priori_.
Cependant, l'analyse des attributs de chaque table nous a amené à maintenir certaines d'entres elles, et ce pour les raisons suivantes :
* Table Membre : le numéro de membre étant spécifié dans le sujet initial, nous avons décidé de le conserver. Cependant, si finalement le commanditaire ne maintenait pas cet attribut précisé dans le cahier des charges, nous pourrions envisager _telephone_ comme clef primaire.
* table Epreuve : en retirant le numéro de l'épreuve, on pourrait envisager _(competition,specialite)_ comme clef primaire. Cependant, cela signifierait qu'il n'y a plus qu'une épreuve de chaque spécialité pour une compétition donnée. On pourrait aussi envisager _competition,dateEpreuve,heureEpreuve)_ comme clef primaire, or il semble _a priori_ possible qu'il y ait, pour une compétition donnée, deux épreuves en même temps (à la même date et à la même heure). On a donc décidé de maintenir l'attribut _numeroEpreuve_.
*  Table Activité : si la clef était _titreActivite,adresseActivite)_, alors, par exemple, il ne pourrait pas y avoir deux fois _Compétition de natation_ à la même adresse, ce qui nous semble invraisemblable, car on souhaite de nouveau enregistrer les résultats de cette nouvelle activité si c'est une compétition. Nous avons donc maintenu la clef artificielle _numeroActivite_.
* Table Paiement : on peut payer une inscription en plusieurs fois ; en effet, sinon, la table __Paiement__ serait inutile. Nous avons donc maintenu la clef artificelle __numeroPaiement__.
* Table Inscription : un membre peut bien entendu s'inscrire plusieurs années ; on a donc maintenu la clef artificielle _numeroInscription_.

### Suppression de clefs artificielles
* Table Resultat : on a considéré _(membre,numeroEpreuve,competitionEpreuve)_ comme clef primaire ; on considère en effet qu'un membre a un seul résultat par compétition, la clef étrangère vers __Competition__ étant _(numeroEpreuve,competitionEpreuve)._ Il y avait cependant une autre clef candidate : _(numeroEpreuve,competitionEpreuve,rang)_ ; nous avons donc précisé que ce triplet doit être unique.
* Table OrganisateurExterne : on a considéré _(#nomOrganisateur,#adresse,#telephoneResponsable)_ comme clef primaire. Cependant, cela signifie qu'il ne peut y avoir deux personnes avec le même nom, à la même adresse et avec le même responsable qui sont organisateurs externes - ou, du moins, on ne peut pas les distinguer. De même, on ne pourra distinguer deux responsables ayant le même numéro télephone (ce qui pourrait poser problème dans le cas où deux personnes en couple sont toutes deux responsables et communiquent toutes deux leur numéro de télephone fixe commun). On suppose donc arbitrairement que _(#nomOrganisateur,#adresse,#telephoneResponsable)_est unique. Il semblerait plus judicieux de revenir sur ce choix par la suite.
* Table Inscription : on considère qu'un membre ne peut s'inscrire qu'une fois par année civile. On adopte donc _(membre,anneeInscription)_ comme clef primaire.

### Transformation d'attributs en méthodes
* D'après le cahier des charges, les professionnels doivent toujours payer 25€ de frais d'inscription et les amateurs ne doivent jamais rien payer. Par conséquent, l'attribut _Inscription.fraisInscription_ entraînait de la redondance avec l'attribut _Inscription.statutMembre_. Cet attribut est donc désormais une méthode, qui s'est traduite par la mise en place de la vue __vInscription__ dans le SQL LDD.

## Ajout de vues
* En sus de la vue ci-dessus permettant d'éviter une redondance, nous avons - enfin ! - implémenté la méthode _soldeAPayer()_ au sein de la vue __vMembre__.

## Preuve de normalisation

### Membre

Pour les raisons évoquées ci-dessus, nous avons maintenu la clef artificielle _numeroMembre_. Nous avons en effet supposé qu'aucun des attributs naturels de la table ne pouvait être clef. De plus, on suppose qu'aucun attribut non clef ne détermine des attributs. Par exemple, on considère que plusieurs membres peuvent avoir le même numéro de télephone. La table est par conséquent en BCNF.

### Activité

Voir l'explication ci-dessus avec la clef artificelle __numeroActivite__.

### Financement

La date de l'activité de financement ne détermine pas son heure, et vice-versa. Seule la clef étrangère _numeroActivite=>Activite.numeroActivite_ détermine la date et l'heure. La table est en BCNF.

### OrganisateurExterne

On a émis l'hypothèse selon laquelle à une adresse donnée, le nom d'un organisateur est unique. De plus, nous avons considéré qu'il ne peut y avoir plusieurs responsables avec le même numéro de téléphone. Selon ces hypothèses et seulement sous ces hypothèses, la table est en BCNF. Si l'on souhaitait ne considérer aucune hypothèse (toutes pouvant s'avérer fausses « dans la vraie vie »), il faudrait ajouter une clef artificielle.

### Competition

Même explication que __Financement__ avec les attributs _dateDebut_, _dateFin_ et _lieuCompetition_.

### CompetitionExterne

Toujours sous les hypothèses avec lesquelles on a défini la clef primaire de _OrganisateurExterne_, la table est en BCNF. Il est en effet possible que le même duo organisateur-responsable organise plusieurs activités.

### CompetitionInterne

On a considéré que plusieurs compétitions internes pouvaient avoir le même titre. La seule DF est _numeroActivite-\>Titre_, et _numeroActivite_ est une clef. La table est donc en BCNF.

### Discipline

La table ne comporte qu'un seul attribut ; elle ne comporte donc aucune DF. Elle est par conséquent en BCNF.

### Specialite

On a considéré que le nom d'une spécialité est unique. La seule DF est _nomSpecialite-\>discipline_, et _nomSpecialite_ est une clef. La table est donc en BCNF.

### Epreuve

On considère qu'il peut y avoir plusieurs épreuves à la même date et à la même heure. _(dateEpreuve,heureEpreuve)_ n'est donc pas une clef. On a aussi considéré que deux épreuves d'une même compétition et au même moment peuvent concerner une même spécialité. Pour ces raisons également évoquées plus haut (« __Maintien de certaines clefs artificielles__ »), on a maintenu _(competition,numeroEpreuve)_ comme clef (on a conservé l'attribut artificiel _numeroEpreuve_). Sous ces hypothèses, la table est en BCNF.

### Resultat

Cette relation comporte deux clefs, à savoir _(numeroEpreuve,competitionEpreuve,membre)_ et _(numeroEpreuve,competitionEpreuve,rang)_. Aucun sous-ensemble de ces deux clefs ne détermine d'autres attributs. De plus, le seul attribut n'appartenant à aucune clef est _points_. Or on s'aperçoit trivialement qu'il peut y avoir plusieurs résultats avec le même score. La table est donc en BCNF.

### Inscription

On a considéré qu'un membre ne peut s'inscrire qu'une fois par an. La seule  clef est donc _(membre,anneeInscription)_, qui détermine _statutMembre_. La table est en BCNF.

### Paiement

Pour les raisons évoquées plus haut, on a maintenu la clef artificielle _numeroPaiement_. La table est trivialement en BCNF.

### Responsabilité

La table est toute-clef. Aucun sous-ensemble ne peut déterminer un autre attribut. La table est trivialement en BCNF.

### Specialisation

Voir ci-dessus.
