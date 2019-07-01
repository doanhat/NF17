CREATE VIEW v_age (nom, prenom, age) AS

SELECT identitemembre->>'nom' AS nom, identitemembre->>'prenom' AS prenom, CAST(infosmembre->>'age' AS INTEGER) AS age 

FROM Membre m

WHERE CAST(infosmembre->>'age'AS INTEGER)=21;