--Arnaud Cojez, L3S5, G4, TP5
--E1Q1
SELECT fid FROM Films
EXCEPT
SELECT DISTINCT film FROM Prix;
--E1Q2
SELECT DISTINCT film AS fid, artiste AS realisateur FROM Prix
WHERE artiste IN (SELECT realisateur FROM Films);

