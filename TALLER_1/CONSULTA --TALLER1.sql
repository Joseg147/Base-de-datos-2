-- ESTAN COMENTADOS PARA QUE LOS PRUEBE 1 A 1
#SELECT * FROM Juegos;

#SELECT * FROM Desarrolladores;

#SELECT j.titulo, d.nombre desarrollador
#FROM Juegos j
#JOIN Juegos_Desarrolladores jd ON j.id = jd.id_juego
#JOIN Desarrolladores d ON jd.id_desarrollador = d.id;

#UPDATE Juegos
#SET precio = 19.99
#WHERE titulo = 'FIFA 20';

#DELETE FROM Juegos
#WHERE titulo = 'Minecraft';
