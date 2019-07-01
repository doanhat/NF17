SELECT pe->>'nom' AS nom, pe->>'prenom' AS prenom,ge->>'nomEquipe' AS nom_equipe

FROM competition c, JSON_ARRAY_ELEMENTS(c.Equipe) ge, JSON_ARRAY_ELEMENTS(ge->'joueurs') pe

WHERE numeroactivite = 4;
