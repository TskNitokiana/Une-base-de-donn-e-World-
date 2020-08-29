-- Creation de la table Persone
CREATE TABLE IF NOT EXISTS `personnes` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `taille` float NOT NULL,
  `poids` float NOT NULL
);
--Inserttion des donnees
INSERT INTO `personnes` (`nom`, `prenom`, `age`, `taille`, `poids`) VALUES
( 'Rakoto', 'Be Nify', 10, 1.5, 70),
( 'Lava', 'Rapeto', 25, 2, 30),
( 'Ba', 'Lita', 7, 1, 20.5),
( 'Kiala', 'Manjakely', 100, 1.68, 45.7),
( 'Kiala', 'Pota', 37, 0.8, 50);

--ajout d'une nouvelle colones couleur_preferee
ALTER TABLE personnes
ADD couleur_preferee VARCHAR(255);

--modification des valeurs 
UPDATE personnes SET couleur_preferee = 'rouge' WHERE id = 1;
UPDATE personnes SET couleur_preferee = 'vert' WHERE id = 2;
UPDATE personnes SET couleur_preferee = 'jaune' WHERE id = 3;
UPDATE personnes SET couleur_preferee = 'violet' WHERE id = 4;
UPDATE personnes SET couleur_preferee = 'grise' WHERE id = 5;