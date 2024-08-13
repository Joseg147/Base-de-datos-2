CREATE VIEW Partes_Pesadas AS
SELECT Nombre, Peso, Precio,Color
FROM Partes
WHERE Peso > 15.0;

SELECT * FROM vistas.partes_pesadas;