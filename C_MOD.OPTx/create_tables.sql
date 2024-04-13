DROP TABLE IF EXISTS Membre;
DROP TABLE IF EXISTS Pret;

CREATE TABLE Membre (
  idMembre SERIAL  NOT NULL,
  nom varchar(20) default NULL,
  telephoneResidence varchar(15) default NULL,
  PRIMARY KEY (idMembre)
);

CREATE TABLE Pret (
  noSequence SERIAL  NOT NULL,
  datePret DATE,
  idMembre INTEGER REFERENCES Membre,
  idExemplaire INTEGER UNIQUE,
  PRIMARY KEY (noSequence)
);
