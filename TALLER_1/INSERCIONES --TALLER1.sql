
INSERT INTO Juegos (titulo, genero, plataforma, fecha_lanzamiento, precio) VALUES
('FIFA 20', 'Sport', 'PS4,XBOX', '2019-09-27', 70.00),
('Cyberpunk 2077', 'RPG', 'PC', '2020-12-10', 59.99),
('Uncharted 4', 'Single player','PS4', '2016-05-10', 59.99),
('Fornite','Battle Royale','Todas las plaformas','2017-09-26',0.00),
('Minecraft', 'Sandbox', 'PC', '2011-11-18', 26.95);

INSERT INTO Desarrolladores (nombre, pais) VALUES
('CD Projekt Red', 'Polonia'),
('Ea Vancouver', 'Canada'),
('Epic Games','USA'),
('Naugthy Doog','USA'),
('Mojang Studios', 'Suecia');

INSERT INTO Juegos_Desarrolladores (id_juego, id_desarrollador) VALUES
(1, 2),
(2, 1),
(3, 4),
(4, 3),
(5, 5);
