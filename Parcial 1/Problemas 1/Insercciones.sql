INSERT INTO oficinas(Id_oficina,Nombre,Ciudad,Telefono,Direccion,Departamento,Pais,Codigo_postal,Continente,Activo) VALUES
('OF001','Oficina Principal','Ciudad de panama','+507 253-3352','Av.Balboa, Edificio BICSA','Panama','Panama','07179','America',TRUE),
('OF002','Sucursal Colombia','Bogota','+57 601 377-7777','Av.Boyaca, Multiplaza mall Piso 2','Cundinamarca','Colombia','110541','America',TRUE),
('OF003','Sucursal Chorrera','La Chorrera','+507 254-4412','Av.Libertador,Plaza Italia Local#23','Panama Oeste','Panama','07065','America',TRUE),
('OF004','Sucursal Mexico','Monterrey','+52 81 8439-0098','Jordan 2365,64460 Monterrey','Nuevo leon','Mexico','64000','America',TRUE),
('OF005','Sucursal Costa Rica','San Jose','+506 234-4456','Paseo Colon calle 28','San jose','Costa Rica','10101','America',FALSE);

INSERT INTO jefe(Nombre,Apellido,Email,Id_oficina,Activo) VALUES 
('Jose','Gutierrez','Joseguti744@gmail.com','OF002',TRUE),
('Aliel','Alvarez','Alielalv09@gmail.com','OF004',TRUE),
('Luis','Sanchez','Sanchezlui89@gmail.com','OF001',FALSE),
('Maria','Hernandez','MariaHdz@gmail.com','OF005',FALSE),
('Sergio','Ramos','RamosSer@gmail.com','OF003',FALSE);

INSERT INTO empleados(Documento,Nombre,Apellido,Extension,Email,Id_oficina,Id_jefe,Cargo,Activo) VALUES
('8-543-2344','Shadha','Chen','PTY','ShadhaChen04@gmail.com','OF001',3,'Marketing',TRUE),
('1-234-563-432','Mario','Gonzales','CO','Gonzamario@gmail.com','OF002',1,'Sistemas',TRUE),
('382-4432-432','Guillermo','Del toro','MX','GuillermoDT58@gmail.com','OF004',2,'Recursos Humanos',FALSE),
('8-967-232','Ramses','Rodriguez','PTY','Ramrodri34@gmail.com','OF003',5,'Contabilidad',TRUE),
('32-32221-4322','Teresa','Carrasco','CR','TereCarrasco00@gmail.com','OF005',4,'Ventas',FALSE),
('8-123-456','Karla','Blanco','PTY','KarlaBlanco44@gmail.com','OF001',3,'Ventas',TRUE),
('8-452-431','Fernando','Alonso','PTY','FerAlonso@gmail.com','OF003',5,'Ventas',TRUE),
('2-3223-4233-34','Mario','Fernandez','MX','Mfernandez@gmail.com','OF004',2,'Ventas',TRUE),
('21-676-456','Bruno','Diaz','CO','BrunoDZ@gmail.com','OF002',1,'Ventas',TRUE);

INSERT INTO clientes(Empresa,Nombre,Apellido,Telefono,Direccion,Ciudad,Departamento,Codigo_postal,Pais,Numero_empleado,Email,Limite_credito,Activo) VALUES 
('Novey','Sofia','Martinez','+507 243-9800','La Chorrera Av.libertador Plaza maria Local#12','La Chorrera','Panama Oeste','07063','Panama',7,'NoveyChorrera@gmail.com',13000.00,TRUE),
('Panafoto','Carlos','Velez','+507 345-5632','Santiago BLVD Flores azules Local#3','Santiago','Veraguas','08006','Panama',6,'PanafotoSG@gmail.com',23000.00,TRUE),
('Walmart Monterrey','Natalia','Garcia','+52 81 6454-7861','Av.Miranda','Monterrey','Nuevo leon','65009','Mexico',8,'WalmartMTY@gmail.com',200000.00,TRUE),
('AudioFoto','Jeferson','Santiago','+506 784-0944','Av.Flores Calle 12','San jose','San jose','34333','Costa Rica',5,'AudiofotoCR@gmail.com',8700.00,FALSE),
('Falabella','Leonardo','Castillo','+57 601 4635-5433','BLVD Costa roja Local#6','Bogota','Cundinamarca','21233','Colombia',9,'FalabellaBGT@gmail.com',320000.00,TRUE);

INSERT INTO ordenes(Fecha_recibido,Fecha_Limite_entrega,Fecha_entrega,Estado,Observacion,Numero_orden,Id_cliente,Pagado) VALUES
('2024-06-24','2024-07-08','2024-07-01','Pendiente','Esta lleva material delicado',001,1,FALSE),
('2024-04-16','2024-04-30','2024-04-23','Entregado','Sin Observacion',002,2,TRUE),
('2023-12-09','2023-12-26','2023-12-20','Entregado','Quieren todos los productos en rojo',003,3,TRUE),
('2024-01-02','2024-01-15','2024-01-11','Cancelado','Sin Observacion',004,4,FALSE),
('2024-02-14','2024-03-01','2024-02-28','Entregado','Sin Observacion',005,5,TRUE);

INSERT INTO pagos(Numero_factura,Id_cliente,Fecha_pago,Total_pago,Numero_transaccion,Tipo_pago,Pago_confirmado) VALUES 
('123456789',1,NULL,3000.00,NULL,NULL,FALSE),
('596444590',2,'2024-04-16',1200.00,675890043,'Tarjeta Visa',TRUE),
('987654321',3,'2023-12-09',600.00,905399347,'Transaccion',TRUE),
('097899445',4,NULL,2000.00,NULL,NULL,FALSE),
('342366879',5,'2024-02-14',975.00,784322344,'Transaccion',TRUE);

INSERT INTO lineas_productos(Nombre_linea,Texto_Descripcion,HTML_descripcion,Codigo_linea,Imagen,Disponible_linea) VALUES
('Lineas Electronica','Productos electronicos para el hogar y la oficina','<p>Encuentre una amplia variedad de productos electrónicos para el hogar y la oficina, como televisores, computadoras, smartphones, tablets y más.</p>',1,'Electronica.jpg',TRUE),
('Linea Electrodomestico','Prodductos de linea blanca para el hogar','<p>Encuentre una amplia variedad de electrodometicos para el hogar como: Lavadoras,Secadoras,Estufas,ETC.</p>',2,'Lineablncaa.jpg',TRUE),
('Linea muebles','Productos para decorar el hogar','<p>Encuentre una amplia variedad de muebles finos y bien acabados',3,'Muebles.jpg',TRUE),
('Linea Videojuegos','Productos de videojuegos','<p>Encuentre una variedad de accesorio,consolas y juegos para pasar horas de entretenimiento',4,'Videojuego.jpg',TRUE),
('Linea Ropa','Productos de ropa para muejeres,hombres y niños','<p>Una amplia variedad de sueteres,calzados,pantalones y ETC',5,'Ropa.jpg',TRUE);

INSERT INTO productos(Id_producto,Nombre_producto,Id_linea_producto,Escala,Cantidad,Precio_venta,Codigo_barra,MSRP,Disponible) VALUES
('PRO-001','Nintnedo switch',4,'Unidad',100,400.00,456789321,400.00,TRUE),
('PRO-002','Jeans Levis',5,'Unidad',50,60.00,976800334,65.00,TRUE),
('PRO-003','Sueter Adidas seleccion Alemania',5,'Unidad',0,75.00,123440996,80.00,FALSE),
('PRO-004','Lavadora samsung SM544',2,'Unidad',300,500.00,679900125,600.00,TRUE),
('PRO-005','Televisor LG 55Plg LG678',1,'Unidad',65,1000.00,433568009,900.00,TRUE),
('PRO-006','Sillon sofa cama',3,'Uindad',0,250.00,008967111,245.00,FALSE),
('PRO-007','Super Mario Wonder',4,'Unidad',65,75.00,500944323,80.00,TRUE),
('PRO-008','Cama Queen',3,'Unidad',23,150.00,211090944,150.00,TRUE);

INSERT INTO Detalles_ordenes(Numero_orden,Id_producto,Cantidad_pedida,Valor_unitario,Numero_Seguimiento,Pedido_internacional) VALUES
(001,'PRO-005',5,1000.00,'SEG-001',FALSE),
(002,'PRO-001',4,400.00,'SEG-002',FALSE),
(003,'PRO-002',10,60.00,'SEG-003',TRUE),
(004,'PRO-004',4,500.00,'SEG-004',TRUE),
(005,'PRO-007',13,75.00,'SEG-005',TRUE);
