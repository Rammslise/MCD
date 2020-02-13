INSERT INTO `types` (`type`)
VALUES
('Maison'), ('Appartement'), ('Terrain');

INSERT INTO `timeSlots` (`timeSlot`)
VALUES
('11:00:00'), ('14:00:00'), ('16:00:00'),('17:00:00'), ('18:00:00'), ('20:00:00');

INSERT INTO `clients` (`lastname`, `firstname`, `budget`, `id_types`)
VALUES
('Daniel', 'Rouleau', 150000, 2),
('Grégoire', 'Paimboeuf', 120000, 3),
('Fiacre', 'Demers', 50000, 1),
('Laurent', 'Meilleur', 80000, 2),
('Aymon', 'Deschamps', 160000, 3),
('Laverne', 'Duperré', 170000, 1),
('Lance', 'Dastous', 140000, 2),
('Alain', 'Moïse', 130000, 1),
('Oriel', 'Guilmette', 90000, 3),
('Bellamy', 'Audibert', 80000, 2),
('Burkett', 'Brunault', 170000, 1),
('Desire', 'Hétu', 200000, 1),
('Pansy', 'Harquin', 75000, 3),
('Cerise', 'Mailhot', 60000, 2),
('Cammile', 'Pomerleau', 190000, 1),
('Zoé', 'Querry', 180000, 1),
('Sacripant', 'Marcoux', 220000, 1),
('Mallory', 'Moreau', 250000, 3),
('Nadine', 'L\'Heureux', 125000, 2),
('Ormazd', 'Racicot', 115000, 3);

INSERT INTO `properties` (`name`, `postalCode`, `price`, `id_types`)
VALUES
('Terrain 432m²', '02200', 42000, 3),
('Maison 52m² 3 pièces', '02200', 80000, 1),
('Maison 110m² 4 pièces', '02200', 120000, 1),
('Appartement 51m² 2 pièces', '02200', 100000, 2),
('Terrain 580m²', '02200', 60000, 3),
('Maison 145m² 5 pièces', '02200', 150000, 1),
('Appartement 41m² 2 pièce', '02200', 62500, 2),
('Maison 115m² 3 pièces', '02200', 125000, 1),
('Maison 117m² 4 pièces', '02200', 128000, 1),
('Terrain 572m²', '02200', 55000, 3),
('Maison 150m² 6 pièces', '02200', 160000, 1),
('Appartement 60m² 3 pièce', '02200', 83200, 2),
('Maison 130m² 3 pièces', '02200', 115000, 1),
('Maison 100m² 3 pièces', '02200', 102000, 1),
('Terrain 587m²', '02200', 35000, 3),
('Maison 90m² 2 pièces', '02200', 98000, 1),
('Appartement 32m² 1 pièce', '02200', 56500, 2),
('Maison 200m² 8 pièces', '02200', 220000, 1),
('Maison 55m² 3 pièces', '02200', 61300, 1),
('Terrain 1170m²', '02200', 70000, 3),
('Maison 70m² 4 pièces', '02200', 99000, 1),
('Appartement 80m² 4 pièce', '02200', 87600, 2),
('Maison 73m² 3 pièces', '02200', 101000, 1),
('Maison 140m² 4 pièces', '02200', 165000, 1),
('Terrain 620m²', '02200', 71500, 3),
('Maison 180m² 5 pièces', '02200', 175000, 1),
('Appartement 41m² 1 pièce', '02200', 62000, 2),
('Appartement 70m² 4 pièce', '02200', 105000, 2),
('Maison 58m² 2 pièces', '02200', 68500, 1),
('Terrain 650m²', '02200', 57000, 3);

INSERT INTO `appointments` (`date`, `id_clients`, `id_properties`, `id_timeSlots`)
VALUES
('2020/01/25', 3, 2, 1),
('2019/12/01', 5, 5, 2),
('2019/12/01', 8, 3, 3),
('2019/12/03', 1, 4, 4),
('2019/12/03', 15, 6, 5),
('2019/12/05', 17, 8, 6),
('2019/12/05', 19, 7, 1),
('2019/12/05', 16, 23, 2),
('2019/12/05', 18, 25, 3),
('2019/12/08', 20, 1, 4);
