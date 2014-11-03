---  TD5 BDD

DROP TABLE Roles;
DROP TABLE Prix;
DROP TABLE Films;
DROP TABLE Artists;


CREATE TABLE Artists (
 aid INTEGER PRIMARY KEY ,
 anom VARCHAR(30) NOT NULL ,
 nationalite VARCHAR(30) NOT NULL 
);


CREATE TABLE Films (
 fid INTEGER PRIMARY KEY ,
 titre VARCHAR(30) NOT NULL ,
 realisateur INTEGER REFERENCES Artists, 
 an DATE NOT NULL
);

 
CREATE TABLE Roles (
 fid INTEGER NOT NULL ,
 aid INTEGER NOT NULL,
 personnage VARCHAR(45),
 cout INTEGER,
 PRIMARY KEY (fid,aid), 
 FOREIGN KEY (fid) 
 REFERENCES Films
 ON DELETE CASCADE 
 ON UPDATE CASCADE,
 FOREIGN KEY (aid) 
 REFERENCES Artists 
 ON DELETE CASCADE 
 ON UPDATE CASCADE
);


CREATE TABLE Prix (
 pid INTEGER PRIMARY KEY ,
 nom VARCHAR(70) NOT NULL ,
 film INTEGER REFERENCES Films, 
 artiste INTEGER REFERENCES Artists, 
 an DATE NOT NULL
);



--- Insertion de tuples qui ne violent pas les contraintes

INSERT INTO Artists VALUES
(123,'JeanduJardin','francais');
INSERT INTO Artists VALUES
(415,'MarionCotillard','francais');
INSERT INTO Artists VALUES
(304,'ChiaraMuti','italien');
INSERT INTO Artists VALUES
(702,'LauraAntonelli','italien');
INSERT INTO Artists VALUES
(876,'MarcelloMastroianni','italien');

INSERT INTO Films
 VALUES (1,'De rouilles et des os',876,'2011-01-01');
INSERT INTO Films
 VALUES (2,'Cyrano en vrai',876,'2010-02-02');
INSERT INTO Films
 VALUES (3,'Matrix2',876,'2014-04-04');
-- INSERT INTO Films
-- VALUES (5,'Cyrano en vrai',876,'2011-01-01');
-- used in TD3 only

INSERT INTO Roles
 VALUES (2,123,'Cyrano',10500);
INSERT INTO Roles
 VALUES (3,123,'Cyrano',20000);
INSERT INTO Roles
 VALUES (2,702,'FJacques',45000);
 INSERT INTO Roles
 VALUES (1,304,'Cecile',9000); 

INSERT INTO Prix
 VALUES (1,'meilleur realisateur',1,876,'2011-12-31');
INSERT INTO Prix
 VALUES (2,'meilleur acteur',2,123,'2010-12-31');
INSERT INTO Prix
 VALUES (3,'meilleur acteur non protagoniste',2,702,'2010-12-31');



