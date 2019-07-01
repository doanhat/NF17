CREATE OR REPLACE FUNCTION fTestFrais (numero NUMBER)
  RETURN VARCHAR2
IS
  solde  NUMBER;
BEGIN
  SELECT v.solde INTO solde
  FROM vMembre v
  WHERE v.numeroMembre=numero ;

  IF solde = 0 THEN
    RETURN 'ACTIF';
  ELSE
    RETURN 'INACTIF';
  END IF;
END;
/
SELECT numeroMembre, nom, prenom, fTestFrais(numeroMembre) AS etat FROM Membre;
/