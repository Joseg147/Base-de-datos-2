#Select * from ordenes;
#Select * from Detalles_ordenes;
#Select * from oficinas;
#Select * from jefe;
#Select * from empleados;
#Select * from pagos;
#Select * from productos;
#Select * from clientes;
#Select * from lineas_productos;

#Select concat((Nombre)," ",(Apellido)) Nombre_completo,Cargo,Id_oficina,Numero_empleado,concat((Extension),(Numero_empleado)) Numero_extension
#from empleados
#WHERE Extension='PTY';

#Update jefe
#set Activo = 1
#where Id_jefe = 4;

#Delete from empleados
#where Nombre = 'Guillermo';

#CREATE VIEW V_reporteCliente_empleado AS 
#Select
#concat(c.Nombre,' ',c.Apellido) NombreCompleto,
#concat(e.Nombre,' ',e.Apellido) NombreCompletoempleado
#FROM clientes c 
#join empleados e  on c.Numero_empleado = e.Numero_empleado;
