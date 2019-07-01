select identitemembre->>'nom' as nom,identitemembre->>'prenom' as prenom,CAST(infosmembre->>'age' AS INTEGER) AS age

from membre

where CAST(infosmembre->>'age' AS INTEGER) = 23;