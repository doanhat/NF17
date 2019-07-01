CREATE OR REPLACE PROCEDURE pAfficheInformationJeune
IS
  CURSOR cInformation IS
    SELECT nom, prenom, dateDeNaissance, adresse, telephone FROM Membre;
  vNom Membre.nom%TYPE;
  vPrenom Membre.prenom%TYPE;
  vDateDeNaissance Membre.dateDeNaissance%TYPE;
  vAdresse Membre.adresse%TYPE;
  vTelephone Membre.telephone%TYPE;
BEGIN
  DBMS_OUTPUT.PUT_LINE('** Liste des membres **');
  OPEN cInformation;
  LOOP
    FETCH cInformation INTO vNom, vPrenom, vDateDeNaissance, vAdresse, vTelephone;
    EXIT WHEN cInformation%NOTFOUND;
    IF (months_between(sysdate, vDateDeNaissance))/12 BETWEEN 18 AND 25 THEN
      DBMS_OUTPUT.PUT_LINE('-' || INITCAP(TRIM(vNom)) || ' ' || INITCAP(TRIM(vPrenom)) || ', age : ' || TRUNC((months_between(sysdate, vDateDeNaissance))/12) || 'ans, adresse : ' || INITCAP(TRIM(vAdresse)) || ', tel : ' || vTelephone );
    END IF;
  END LOOP;
END;

/

SET SERVEROUTPUT ON;
BEGIN
  pAfficheInformationJeune;
END;
/

show errors
