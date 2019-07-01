BEGIN;
UPDATE Membre1 SET telephone='0601780456' WHERE telephone='0601780754';
UPDATE Membre1 SET telephone='0609030426' WHERE telephone='0789023457';
UPDATE Membre1 SET telephone='0623456345' WHERE telephone='0623456122';
COMMIT;

BEGIN;
UPDATE Membre2 SET adresse='6 rue de Paris' WHERE numeroMembre=2;
UPDATE Membre2 SET adresse='39 square Gabriel Auguste Ancelet' WHERE numeroMembre=3;
COMMIT;

BEGIN;
UPDATE OrganisateurExterne SET nomResponsable='Leo',prenomResponsable='Vincent'  WHERE nomResponsable='Louis' AND prenomResponsable='Bruyon';
UPDATE OrganisateurExterne SET nomOrganisateur='FC Beauvais' WHERE nomOrganisateur='Club Sportif de Beauvais';
COMMIT;
