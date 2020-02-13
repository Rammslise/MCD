--Exercice 1
--Il faudra pouvoir afficher tous les rendez-vous du cabinet médical
--(date et créneau horaire du rendez-vous, nom et prénom du patient, nom et spécialité du médecin).
SELECT `appointments`.`date`,
       `timeSlots`.`time`,
       `patients`.`lastname`,
       `patients`.`firstname`,
       `doctors`.`lastname` AS `doctorsName`,
       `specialities`.`speciality`
FROM `appointments`
INNER JOIN `timeSlots`
  ON `timeSlots`.`id` = `appointments`.`id_timeSlots`
INNER JOIN `patients`
  ON `patients`.`id` = `appointments`.`id_patients`
INNER JOIN `doctors`
  ON `doctors`.`id` = `appointments`.`id_doctors`
INNER JOIN `specialities`
  ON `specialities`.`id` = `doctors`.`id_specialities`;

--Exercice 2
--Il faudra pouvoir afficher tous les rendez-vous d'un médecin
--(nom du médecin, date et créneau horaire du rendez-vous, nom et prénom du patient).
SELECT `doctors`.`lastname` AS `doctorsName`,
       `appointments`.`date`,
       `timeSlots`.`time`,
       `patients`.`lastname`,
       `patients`.`firstname`
FROM `appointments`
INNER JOIN `doctors`
  ON `doctors`.`id` = `appointments`.`id_doctors`
INNER JOIN `timeSlots`
  ON `timeSlots`.`id` = `appointments`.`id_timeSlots`
INNER JOIN `patients`
  ON `patients`.`id` = `appointments`.`id_patients`
WHERE `doctors`.`id` = 1;

--Exercice 3
--Il faudra pouvoir afficher le rendez-vous d'un patient
--(nom et prénom du patient, spécialité du médecin, nom et prénom du médecin, date et créneau horaire du rendez-vous).
SELECT `patients`.`lastname`,
       `patients`.`firstname`,
       `specialities`.`speciality`,
       `doctors`.`lastname` AS `doctorsName`,
       `doctors`.`firstname` AS `doctorsFirstname`,
       `appointments`.`date`,
       `timeSlots`.`time`
FROM `appointments`
INNER JOIN `doctors`
  ON `doctors`.`id` = `appointments`.`id_doctors`
INNER JOIN `timeSlots`
  ON `timeSlots`.`id` = `appointments`.`id_timeSlots`
INNER JOIN `patients`
  ON `patients`.`id` = `appointments`.`id_patients`
INNER JOIN `specialities`
  ON `specialities`.`id` = `doctors`.`id_specialities`
WHERE `patients`.`id` = 1 AND `appointments`.`date` = '2020/01/25';
