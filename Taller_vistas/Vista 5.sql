CREATE VIEW Proveedores_Con_Partes_Rojas AS
SELECT DISTINCT pr.Nombre AS Proveedor
FROM Proveedores pr
INNER JOIN Taller t ON pr.Id = t.Proveedor_ID
INNER JOIN Partes pa ON t.Parte_ID = pa.Numero_Parte
WHERE pa.Color = 'Rojo';

SELECT * FROM vistas.proveedores_con_partes_rojas;
