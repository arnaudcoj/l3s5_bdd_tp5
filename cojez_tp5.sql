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

artistes = acteurs + realisateurs
realisateurs = artistes - acteurs
realisateurs = realisateur FROM Films EXCEPT aid FROM Roles
