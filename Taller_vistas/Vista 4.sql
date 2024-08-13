CREATE VIEW Total_Partes_Por_Proveedor AS
SELECT pr.Nombre AS Proveedor, COUNT(t.Parte_ID) AS Total_Partes
FROM Proveedores pr
INNER JOIN Taller t ON pr.Id = t.Proveedor_ID
GROUP BY pr.Nombre;

SELECT * FROM vistas.total_partes_por_proveedor;