INSERT INTO Proveedores ( Nombre, Status, Ciudad) VALUES 
('Smith', 20, 'Londres'),
('Jones', 10, 'París'),
('Blake', 30, 'París'),
('Clark', 20, 'Londres'),
('Adams', 30, 'Atenas');

INSERT INTO Partes (Numero_Parte, Nombre, Color, Peso, Precio, Ciudad) VALUES
(77681, 'Tuerca', 'Rojo', 12.0, 5.0, 'Londres'),
(87642, 'Perno', 'Verde', 17.0, 8.0, 'París'),
(65783, 'Tornillo', 'Azul', 17.0, 10.0, 'Roma'),
(89074, 'Tornillo', 'Rojo', 14.0, 7.0, 'Londres'),
(56675, 'Leva', 'Azul', 12.0, 12.0, 'París'),
(23406, 'Engrane', 'Rojo', 19.0, 15.0, 'Londres');

INSERT INTO Proyectos (Nombre, Ciudad) VALUES 
('Clasificador', 'París'),
('Monitor', 'Roma'),
('OCR', 'Atenas'),
('Consola', 'Atenas'),
('RAID', 'Londres'),
('EDS', 'Oslo'),
('Cinta', 'Londres');


INSERT INTO Taller (Proveedor_ID,Parte_ID,Proyecto_ID,Cantidad) VALUES
(1, 77681,1, 200),
(1, 89074,4, 700),
(1, 23406,6, 400),
(2, 65783,3, 200),
(2, 56675,5, 200),
(2, 23406,6, 500),
(3, 89074,4, 500),
(4, 23406,6, 200),
(5, 87642,2, 200);
