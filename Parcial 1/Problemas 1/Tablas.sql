CREATE TABLE oficinas(
 Id_oficina VARCHAR(10) PRIMARY KEY NOT NULL,
 Nombre VARCHAR(50) NOT NULL UNIQUE,
 Ciudad VARCHAR(50) NOT NULL,
 Telefono VARCHAR(50) NOT NULL,
 Direccion VARCHAR(50) NOT NULL,
 Departamento VARCHAR(50) NOT NULL,
 Pais VARCHAR(50) NOT NULL,
 Codigo_postal VARCHAR (50) NOT NULL,
 Continente VARCHAR(50) NOT NULL,
 Activo BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE jefe(
 Id_jefe INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
 Nombre VARCHAR(50) NOT NULL,
 Apellido VARCHAR(50) NOT NULL,
 Email VARCHAR(100) UNIQUE NOT NULL,
 Id_oficina VARCHAR(10) NOT NULL,
 Activo BOOLEAN NOT NULL DEFAULT TRUE,
 FOREIGN KEY(Id_oficina) REFERENCES oficinas(Id_oficina)
);

CREATE TABLE empleados(
 Documento VARCHAR(50) PRIMARY KEY NOT NULL,
 Nombre VARCHAR(50) NOT NULL,
 Apellido VARCHAR(50) NOT NULL,
 Extension VARCHAR(50) NOT NULL,
 Email VARCHAR(100) NOT NULL,
 Id_oficina VARCHAR(10) NOT NULL,
 Id_jefe INT NOT NULL,
 Numero_empleado INT AUTO_INCREMENT UNIQUE NOT NULL,
 Cargo VARCHAR(50) NOT NULL,
 Activo BOOLEAN NOT NULL DEFAULT TRUE, 
 FOREIGN KEY (Id_oficina) REFERENCES oficinas(Id_oficina),
 FOREIGN KEY (Id_jefe) REFERENCES jefe(Id_jefe)
);

CREATE TABLE clientes(
 Id_cliente INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
 Empresa VARCHAR(50) NOT NULL,
 Nombre VARCHAR(50) NOT NULL, 
 Apellido VARCHAR(50) NOT NULL,
 Telefono VARCHAR(50) NOT NULL,
 Direccion VARCHAR(50) NOT NULL,
 Ciudad VARCHAR(50) NOT NULL,
 Departamento VARCHAR(50) NOT NULL,
 Codigo_postal VARCHAR(50) NOT NULL,
 Pais VARCHAR(50) NOT NULL,
 Numero_empleado INT NOT NULL,
 Email VARCHAR(100) UNIQUE NOT NULL,
 Limite_credito DOUBLE NOT NULL,
 Activo BOOLEAN NOT NULL DEFAULT TRUE,
 FOREIGN KEY (Numero_empleado) REFERENCES empleados(Numero_empleado)
);

CREATE TABLE ordenes(
 Id_orden INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
 Fecha_recibido DATE NOT NULL,
 Fecha_limite_entrega DATE NOT NULL,
 Fecha_entrega DATE NOT NULL,
 Estado VARCHAR(50) NOT NULL,
 Observacion TEXT NOT NULL,
 Numero_orden INT NOT NULL UNIQUE,
 Id_cliente INT NOT NULL,
 Pagado BOOLEAN NOT NULL DEFAULT TRUE, 
 FOREIGN KEY (Id_cliente) REFERENCES clientes(Id_cliente)
 );
 
 CREATE TABLE pagos(
  Numero_factura VARCHAR(50) PRIMARY KEY NOT NULL,
  Id_cliente INT NOT NULL, 
  Fecha_pago DATE,
  Total_pago DOUBLE NOT NULL,
  Numero_transaccion INT UNIQUE,
  Tipo_pago VARCHAR(50),
  Pago_confirmado BOOLEAN NOT NULL DEFAULT TRUE,
  FOREIGN KEY (Id_cliente) REFERENCES clientes(Id_cliente)
 );
 
 CREATE TABLE lineas_productos(
  Id_linea_producto INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  Nombre_linea VARCHAR(50) NOT NULL,
  Texto_descripcion VARCHAR(4000) NOT NULL,
  HTML_descripcion VARCHAR(200) NOT NULL,
  Codigo_linea INT NOT NULL UNIQUE,
  IMAGEN VARCHAR(200) NOT NULL,
  Disponible_linea BOOLEAN NOT NULL DEFAULT TRUE
 );

CREATE TABLE productos(
 Id_producto VARCHAR(15) PRIMARY KEY NOT NULL,
 Nombre_producto VARCHAR(70) NOT NULL,
 Id_linea_producto INT NOT NULL,
 Escala VARCHAR(10) NOT NULL, 
 Cantidad INT NOT NULL,
 Precio_venta DOUBLE NOT NULL,
 Codigo_barra INT NOT NULL UNIQUE,
 MSRP DOUBLE NOT NULL,
 Disponible BOOLEAN NOT NULL DEFAULT TRUE, 
 FOREIGN KEY (Id_linea_producto) REFERENCES lineas_productos(Id_linea_producto)
);

CREATE TABLE Detalles_ordenes(
 Id_detalle INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
 Numero_orden INT NOT NULL,
 Id_producto VARCHAR(15) NOT NULL,
 Cantidad_pedida INT NOT NULL,
 Valor_unitario DOUBLE NOT NULL,
 Numero_Seguimiento VARCHAR(12) NOT NULL UNIQUE,
 Pedido_internacional  BOOLEAN NOT NULL DEFAULT TRUE, 
 FOREIGN KEY(Id_producto) REFERENCES productos(Id_producto),
 FOREIGN KEY(Numero_orden) REFERENCES ordenes(Numero_orden)
);