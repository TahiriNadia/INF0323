DROP TABLE IF EXISTS Membre;

CREATE TABLE Membre (
  idMembre SERIAL  NOT NULL,
  nom varchar(20) default NULL,
  telephoneResidence varchar(15) default NULL,
  PRIMARY KEY (idMembre)
);

