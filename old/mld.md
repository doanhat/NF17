#model relationel

[frampad](https://pad.picasoft.net/p/ARNF17)

Membre(#numeroMembre,nom,prenom,adresse,dateDeNaissance : date , tel )
* Membre.methods:  {    createNumMembre(),membreActif(Inscription.date,Inscription.solde)}

Inscription (#date,montantPayé,#numeroMembre=>Membre),numeroMembre not NULL
* Inscription.methods: {    fraisIns(),solde(), setMontantPayé()}

Comité (#nom)

Participant (#numéro, nom, prénom)

Activité de Compétition(#numéroActivité ,titre, heure, adresse, nomClub, responsableClub, tel,nom=>comité)

Activité de Financement (#numéroActivité ,titre,date ,  adresse,nom=>comité )

Epreuve ( #date,#nom=>spécialité)

Discipline ( #nom )

RésultatExterne (résultat,

RésultatInterne  (résultat,

Spécialité (#nom )

Amateur(#numeroMembre=>Membre)

Professionnel(#numeroMembre=>Membre)
