--Arnaud Cojez, L3S5, G4, TP5
--E1Q1
SELECT fid FROM Films
EXCEPT
SELECT DISTINCT film FROM Prix;
--E1Q2
SELECT DISTINCT film AS fid, artiste AS realisateur FROM Prix
WHERE artiste IN (SELECT realisateur FROM Films);
--E1Q3
INSERT INTO Prix
 VALUES (4,'meilleur gagnant de prix de meilleur acteur',2,123,'2012-12-12');

