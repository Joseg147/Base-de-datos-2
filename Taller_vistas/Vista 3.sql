CREATE VIEW Proyectos_Por_Proveedor AS
SELECT pr.Nombre AS Proveedor, pa.Nombre AS Parte, t.Cantidad, proy.Nombre AS Proyecto
FROM Proveedores pr
INNER JOIN Taller t ON pr.Id = t.Proveedor_ID
INNER JOIN Partes pa ON t.Parte_ID = pa.Numero_Parte
INNER JOIN Proyectos proy ON t.Proyecto_Id = proy.ID;


SELECT * FROM vistas.proyectos_por_proveedor;