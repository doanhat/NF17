select identitemembre->>'nom' as nom,identitemembre->>'prenom' as prenom,CAST(infosmembre->>'age' AS INTEGER) AS age

from membre

where infosmembre->'adresses'->>'adressedomicile' = '5 rue Benjamin Franklin, 60200 Compiègne';