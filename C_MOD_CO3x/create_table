CREATE TABLE MembrePret AS
SELECT Pret.idMembre AS idMembre, nom, telephoneResidence, noSequence, datePret, Pret.idMembre AS idMembrePret, idExemplaire
FROM Membre
FULL JOIN Pret ON Membre.idMembre = Pret.idMembre;
