CREATE OR REPLACE PROCEDURE pAfficheComite (nomActivite VARCHAR2)
IS
  CURSOR cComite IS
    SELECT m.nom, m.prenom, m.adresse, m.telephone, r.responsabiliteMembre
    FROM Membre m, Responsabilite r, Activite a
    WHERE m.numeroMembre = r.numeroMembre AND a.numeroActivite = r.numeroActivite AND a.titreActivite = nomActivite;
  vNom Membre.nom%TYPE;
  vPrenom Membre.prenom%TYPE;
  vAdresse Membre.adresse%TYPE;
  vTelephone Membre.telephone%TYPE;
  vRole Responsabilite.responsabiliteMembre%TYPE;
BEGIN
  DBMS_OUTPUT.PUT_LINE('** Liste des membres du comité de l''activité "'||nomActivite || '" **');
  OPEN cComite;
  LOOP
    FETCH cComite INTO vNom, vPrenom, vAdresse, vTelephone, vRole;
    EXIT WHEN cComite%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE('- ' || INITCAP(TRIM(vNom)) || ' ' || INITCAP(TRIM(vPrenom)) || ', '|| vRole || ', ' ||  ', adresse : ' || INITCAP(TRIM(vAdresse)) || ', tel : ' || vTelephone );
  END LOOP;
END;
/

SET SERVEROUTPUT ON;
BEGIN
  pAfficheComite('Compétition de natation');
END;
/
