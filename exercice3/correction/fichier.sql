--Exercice 1
--Il faudra pouvoir afficher tous les biens par ordre de prix
--(nom du bien, son type, son code postal, son prix).
SELECT `properties`.`name`,
       `properties`.`postalCode`,
       `properties`.`price`,
       `types`.`type`
FROM `properties`
INNER JOIN `types`
  ON `types`.`id` = `properties`.`id_types`
ORDER BY `properties`.`price`;

--Exercice 2
--Il faudra pouvoir afficher les rendez-vous par ordre chronologique
--(date et créneau horaire du rendez-vous, nom du bien, son type, son code postal, son prix, nom et prénom du client).
SELECT `appointments`.`date`,
       `timeSlots`.`timeSlot`,
       `properties`.`name`,
       `types`.`type`,
       `properties`.`postalCode`,
       `properties`.`price`,
       `clients`.`lastname`,
       `clients`.`firstname`
FROM `appointments`
INNER JOIN `clients`
  ON `clients`.`id` = `appointments`.`id_clients`
INNER JOIN `properties`
  ON `appointments`.`id_properties` = `properties`.`id`
INNER JOIN `types`
  ON `properties`.`id_types` = `types`.`id`
INNER JOIN `timeSlots`
  ON `timeSlots`.`id` = `appointments`.`id_timeSlots`
ORDER BY `appointments`.`date`;


--Exercice 3
--Il faudra pouvoir afficher les clients par type de bien qu'ils recherchent
--(nom et prénom du client, type de bien, budget).
SELECT `clients`.`lastname`,
       `clients`.`firstname`,
       `types`.`type`,
       `clients`.`budget`
FROM `clients`
INNER JOIN `types`
  ON `types`.`id` = `clients`.`id_types`
ORDER BY `types`.`type`, `clients`.`budget`;
