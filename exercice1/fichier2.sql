--Exercice 1
--Il faudra pouvoir afficher toutes les notes des élèves
--(nom et prénom de l'élève, la note et la matière).
SELECT `students`.`lastname`,
`students`.`firstname`,
`results`.`score`,
`subjects`.`name`
FROM `students`
INNER JOIN `results`
ON `students`.`id` = `results`.`id_students`
INNER JOIN `subjects`
ON `subjects`.`id` = `results`.`id_subjects`
ORDER BY `students`.`lastname`;

--Exercice 2
--Il faudra pouvoir afficher la moyenne générale de chaque élève
--(nom et prénom de l'élève, la classe de l'élève, le nom du professeur principal, la moyenne).
SELECT `students`.`lastname`,
`students`.`firstname`,
`classrooms`.`name`,
`teachers`.`lastname`,
`teachers`.`firstname`,
ROUND(AVG(`results`.`score`),2) AS `averageScore`
FROM `teachers`
INNER JOIN `classrooms`
  ON `classrooms`.`id_teachers` = `teachers`.`id`
INNER JOIN `students`
  ON `students`.`id_classrooms` = `classrooms`.`id`
INNER JOIN `results`
  ON `results`.`id_students` = `students`.`id`
GROUP BY `students`.`lastname`, `students`.`firstname`,
`classrooms`.`name`, `teachers`.`lastname`, `teachers`.`firstname`;

--Exercice 3
--Il faudra pouvoir afficher tous les élèves d'un professeur
--(nom et prénom du professeur, la classe du professeur, nom et prénom de l'élève).
SELECT `students`.`lastname`,
`students`.`firstname`,
`classrooms`.`name`,
`teachers`.`lastname` AS `teacherLastname`,
`teachers`.`firstname` AS `teacherFirstname`
FROM `teachers`
INNER JOIN `classrooms`
  ON `classrooms`.`id_teachers` = `teachers`.`id`
INNER JOIN `students`
  ON `students`.`id_classrooms` = `classrooms`.`id`;
