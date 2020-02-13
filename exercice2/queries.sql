--Exercice 1
--Il faudra pouvoir afficher les lignes du registre
--(titre, nom et prénom du client, date d'emprunt et de retour du livre).
SELECT `books`.`title`,
`clients`.`lastname`,
`clients`.`firstname`,
`registers`.`borrowingDate`,
`registers`.`returnDate`
FROM `registers`
INNER JOIN `clients`
  ON `clients`.`id` = `registers`.`id_clients`
INNER JOIN `books`
  ON `books`.`id` = `registers`.`id_books`;

--Exercice 2
--Il faudra pouvoir lister tous les livres
--(titre, genre, nom et prénom de l'auteur, disponibilité).
SELECT `books`.`title`,
`genders`.`gender`,
`authors`.`lastname`,
`authors`.`firstname`,
    CASE
      WHEN `registers`.`returnDate` IS NULL THEN 'Indisponible'
      ELSE 'Disponible'
    END AS 'availability'
FROM `books`
INNER JOIN `genders` ON `genders`.`id` = `books`.`id_genders`
INNER JOIN `authors` ON `authors`.`id` = `books`.`id_authors`
LEFT JOIN `registers` ON `registers`.`id_books` = `books`.`id`;

--Exercice 3
--Il faudra pouvoir afficher le nombre total de livres par genre
--(nom du genre, total de livres correspondants).
SELECT `genders`.`gender`, COUNT(*) AS `bookNumber`
FROM `books`
INNER JOIN `genders`
  ON `genders`.`id` = `books`.`id_genders`
--GROUP BY, toujours utiliser une des colonnes du SELECT
GROUP BY `genders`.`gender`;
