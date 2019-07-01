---R2
select ce.nom as nomEquipe, cej.refMembre.nom as nomJoueur
from Competition c, table(c.equipes) ce, table(ce.joueurs) cej
where c.refActivite.titreActivite = 'Compétition de judo';
--group by (ce.nom,cej.refMembre.nom); - vrifier
/
