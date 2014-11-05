--Arnaud Cojez, L3S5, G4, TP5
--E1Q1
SELECT fid FROM Films
EXCEPT
SELECT DISTINCT film FROM Prix;
--E1Q2
SELECT DISTINCT film AS fid, artiste AS realisateur FROM Prix
WHERE artiste IN (SELECT DISTINCT realisateur FROM Films) AND NOT film IN (
SELECT DISTINCT film FROM Prix
WHERE artiste IN (SELECT DISTINCT aid FROM Roles));
--E1Q3
INSERT INTO Prix
 VALUES (4,'meilleur gagnant de prix de meilleur acteur',2,123,'2012-12-12');
SELECT artiste FROM Prix GROUP BY artiste HAVING COUNT(pid) >= 2;
DELETE FROM Prix
 WHERE pid = 4;
--E1Q4
SELECT artiste FROM Prix INNER JOIN Films ON Prix.film = Films.fid WHERE Prix.an > Films.an;
--E1Q5
SELECT aid AS artiste FROM Roles WHERE cout >= ALL (SELECT Cout FROM Roles);
