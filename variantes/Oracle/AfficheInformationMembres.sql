CREATE OR REPLACE PROCEDURE pAfficheInformation
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
    DBMS_OUTPUT.PUT_LINE('- ' || INITCAP(TRIM(vNom)) || ' ' || INITCAP(TRIM(vPrenom)) || ' né(e) le ' || vDateDeNaissance || ', adresse : ' || INITCAP(TRIM(vAdresse)) || ', tel : ' || vTelephone );
  END LOOP;
END;
/

SET SERVEROUTPUT ON;
BEGIN
  pAfficheInformation;
END;
/

show errors
