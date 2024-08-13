CREATE VIEW Proveedores_Partes AS
SELECT pr.Nombre AS Proveedor, pa.Nombre AS Parte, pa.Color, pa.Peso, pa.Ciudad
FROM Proveedores pr
INNER JOIN Taller t ON pr.Id = t.Proveedor_ID
INNER JOIN Partes pa ON t.Parte_ID = pa.Numero_Parte;

SELECT * FROM vistas.proveedores_partes;
