# Projet de NF17 - Note de clarification
_Groupe : Alicia Boullée, Minh Nhat Doan, Candice Bimont et Clément Favreau_

Cette note de clarification (NDC) est une réécriture du cahier des charges (CDC) se trouvant à [cette adresse](https://librecours.net/projet/projets-19p-nx17/projets-19p-nx17_3.xhtml). Nous nous sommes efforcés de lever les ambiguïtés présentes dans le CDC. Aussi, cette NDC pourra être modifiée lors de la réalisation du projet en cas de changements.

## Membres
Un membre est caractérisé par un numéro de membre unique - attribué automatiquement -, son nom, son prénom, sa date de naissance, son adresse et son numéro de téléphone.
On considère qu'un membre est impérativement soit amateur, soit professionnel.
Aussi, un membre est considéré comme *actif* si son inscription est finalisée, c'est-à-dire qu'il est inscrit et qu'il est à jour concernant les frais d'inscription (cf. _Inscriptions_).

Tout membre participant à l'organisation d'une activité doit appartenir à un comité d'organisation.

### Membres professionnels
Un membre professionnel peut participer à des compétitions internes, c'est-à-dire organisées par le club, et à des compétitions externes, organisées par d'autres clubs. Il doit s'acquitter de 25 € de frais d'inscription.

Aussi, chaque membre professionnel est associé à une ou plusieurs spécialités, et chaque spécialité appartient à une et une seule discipline.


### Membres amateurs
Un membre amateur n'a pas à s'acquitter des frais d'inscription. En outre, il ne peut pas participer aux compétitions.

## Inscriptions

### Inscription des membres au club
L'inscription d'un membre peut correspondre à deux cas de figure : soit ce membre s'est déjà inscrit par le passé, auquel cas la nouvelle inscription sera rattachée à ce membre ; soit ce membre ne s'est jamais inscrit par le passé, auquel cas on ajoute ce membre et les données qui lui sont rattachées.

Une inscription est caractérisée par le statut du membre (amateur ou professionnel), l'année de l'inscription, les frais d'inscription et le montant payé. Le solde, qui correspond à la différence entre les frais d'inscription et la somme déjà payée, sera automatiquement calculé. On dira qu'un membre est « à jour concernant les frais d'inscription » (cf. *Membres*) si le solde est égal à 0. Il faut donc être en mesure, postérieurement à l'inscription, de modifier le montant payé. Dans le cas où le membre est à jour concernant les frais d'une inscription donnée, et que cette inscription date de moins d'un an, on indiquera que cette inscription est *active*. On remarque donc qu'il peut y avoir une inscription sans que celle-ci ne soit finalisée, c'est-à-dire sans que le membre ait encore payé. 

On notera qu'un membre qui s'était, par le passé, inscrit en tant qu'amateur, peut s'inscrire comme professionnel, et vice-versa.

### Inscription des sportifs professionnels à des épreuves
Il nous faut gérer la possibilité d'inscrire des sportifs - uniquement les sportifs professionnels - à des épreuves.
#### Activités de compétition internes
Dans le cas où la compétition est interne, alors on aura la possibilité d'inscrire des sportifs professionnels à des épreuves de l'activité, si et seulement si ces derniers sont actifs et sont dans la spécialité de l'épreuve.
#### Activités de compétition externes
Dans le cas où la compétition est externe, alors chaque nouveau participant se voit attribuer un numéro unique. On notera que c'est l'inscription à une activité de compétition qui entraîne la génération de ce numéro ; ainsi, si un professionnel est inscrit à plus d'une épreuve au sein d'une même compétition, il a bien un et un seul numéro unique pour cette compétition. Le cahier des charges nous précise que l'on souhaite explicitiment entrer le nom et le prénom des participants à une compétition externe. Pour cette raison, nous avons décidé de gérer les participants complètement indépendamment des membres (professionnels).

## Disciplines
Une discipline est caractérisée par un nom (considéré unique) ; elle comporte plusieurs spécialités.

### Spécialités
Une spécialité est caractérisée par un nom (considéré unique) ; elle est rattachée à une et une seule discipline. Il doit être possible d'afficher les résultats obtenus par chacun des professionnels associés à une spécialité donnée.

## Comités d'organisation
Chaque comité d'organisation est caractérisé par un nom et un directeur. On considère qu'il ne peut y avoir deux comités d'organisation ayant le même nom ; en outre, on considère que le directeur fait partie des membres - non nécessairement actifs. Il réunit des membres dans le but d'organiser des activités (compétition ou financement). On remarque que, bien que seul un professionnel puisse participer à une compétition, n'importe quel membre, qu'il soit amateur ou professionnel, peut participer à l'organisation d'une compétition. On considèrera que c'est directement un comité qui organise une activité : en ce sens, on ne souhaite pas savoir si tous les membres du comité ou seulement une partie organisent l'activité. 

## Activités
D'après le cahier des charges, une activité est caractérisée par un titre ainsi que « les données du directeur » du comité organisant l'activité. Or, il est aussi demandé de connaître la liste des membres faisant partie du comité. Pour cette raison, on considèrera qu'une activité possède un titre et un numéro d'activité généré automatiquement, et est rattachée à un - et un seul - comité d'organisation.

Une activité est impérativement soit une activité de financement, soit une activité de compétition.

### Activités de financement
Dans le cas d'une activité de financement, sont renseignés une date, une heure et une adresse.
### Activités de compétition
Une activité de compétition est composée de plusieurs épreuves.
En outre, une activité de compétition est soit interne, soit externe ; dans ce dernier cas, les informations de l'organisateur doivent être saisies (club, responsable du club et coordonnées). Le résultat global d'un professionnel à une compétition doit être accessible.
#### Épreuves
Une épreuve est caractérisée par sa date, son heure, son lieu, sa discipline et sa spécialité. Le résultat de chacun des professionnels participant à une épreuve doit être saisi ; on considère qu'il correspond au classement du professionnel dans l'épreuve.

## Utilisateurs du système
Les utilisateurs du système peuvent être :
* La direction du club
* Un entraîneur 
* le personnel administratif du club

Nous n'avons pas encore défini, à ce stade, comment seront gérés les droits accordés à chaque « type de membre », à savoir directeur, membre administratif, membre appartenant à un comité d'organisation, etc.
