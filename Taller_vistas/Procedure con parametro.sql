DELIMITER $$
CREATE PROCEDURE ObtenerPartesPorProveedor(IN Proveedor_ID INT)
BEGIN
    SELECT p.Nombre, p.Color, p.Peso, p.Precio, p.Ciudad
    FROM Partes p
    INNER JOIN Taller t ON p.Numero_Parte = t.Parte_ID
    WHERE t.Proveedor_ID = Proveedor_ID;
END ;

CALL ObtenerPartesPorProveedor(3);
