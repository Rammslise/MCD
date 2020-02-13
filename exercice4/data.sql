INSERT INTO `timeSlots`(`time`)
VALUES
('09:00:00'),
('10:00:00'),
('11:00:00'),
('14:00:00'),
('16:00:00'),
('17:00:00'),
('18:00:00'),
('19:00:00');

INSERT INTO `specialities`(`speciality`)
VALUES
('Généraliste'),
('Neurologue'),
('Oncologue');

INSERT INTO `doctors`(`lastname`, `firstname`, `id_specialities`)
VALUES
('Herve', 'Dominique', 1),
('Gomes', 'Margaret', 2),
('Fontaine', 'Pénélope', 3),
('Lebrun', 'Laurent', 1),
('Rodrigues', 'Alexandria', 2);

INSERT INTO `patients`(`lastname`, `firstname`, `id_doctors`)
VALUES
('Labbe', 'Victor', 1),
('Lecoq', 'Frédéric', 2),
('Coulon', 'Christelle', 3),
('Perrier', 'Charles', 4),
('Mathieu', 'Auguste', 5),
('Lecomte', 'Virginie', 1),
('Collet', 'Nathalie', 2),
('Pasquier', 'Nath', 3),
('Vallee', 'Hélène', 4),
('Gall', 'Franck', 5),
('Monnier', 'Virginie', 1),
('Seguin', 'Alexandrie', 2),
('Lebon', 'Jérôme', 3),
('Diallo', 'Aimé', 4),
('Fouquet', 'Alfred', 5),
('Fournier', 'Monique', 1),
('Deschamps', 'Catherine', 2),
('Blondel', 'Matthieu', 3),
('Marchand', 'Noël', 4),
('Gerard', 'Laure', 5);

INSERT INTO `appointments`(`date`, `id_doctors`, `id_patients`, `id_timeSlots`)
VALUES
('2020/01/25', 1, 1, 1 ),
('2019/12/01', 2, 2, 2 ),
('2019/12/01', 3, 3, 3 ),
('2019/12/03', 4, 4, 4 ),
('2019/12/03', 5, 5, 5),
('2019/12/05', 1, 6, 6),
('2019/12/05', 2, 7, 7),
('2019/12/05', 3, 8, 8),
('2019/12/05', 4, 9, 1),
('2019/12/08', 5, 10, 2),
('2019/12/08', 1, 11, 3),
('2019/12/10', 2, 12, 4),
('2019/12/10', 3, 13, 5),
('2019/12/12', 4, 14, 6),
('2019/12/12', 5, 15, 7),
('2019/12/14', 1, 16, 8),
('2019/12/14', 2, 17, 1),
('2019/12/16', 3, 18, 2),
('2019/12/16', 4, 19, 3),
('2019/12/18', 5, 20, 4),
('2019/12/18', 1, 1, 5),
('2019/12/18', 2, 2, 6),
('2019/12/18', 3, 3, 7),
('2019/12/18', 4, 4, 8),
('2019/12/18', 5, 5, 1),
('2019/12/20', 1, 6, 2),
('2019/12/20', 2, 7, 3),
('2019/12/20', 3, 8, 4),
('2019/12/20', 4, 9, 5),
('2019/12/20', 5, 10, 6);
