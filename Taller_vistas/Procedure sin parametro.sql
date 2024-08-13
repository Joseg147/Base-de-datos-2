DELIMITER $$
CREATE PROCEDURE ObtenerProveedoresConPartes()
BEGIN
    SELECT p.Nombre AS Nombre_Proveedor, COUNT(t.Parte_ID) AS Total_Partes
    FROM Proveedores p
    LEFT JOIN Taller t ON p.Id = t.Proveedor_ID
    GROUP BY p.Nombre;
END;

call vistas.ObtenerProveedoresConPartes();