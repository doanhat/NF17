---R3
select e.dateEpreuve
from Epreuve e
where e.heureEpreuve between 12.00 and 18.00
and e.refCompetition.refActivite.titreActivite = 'Compétition de judo';
/
