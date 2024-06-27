Create view V_ReporteUsuario_Empresa AS
Select Nombre,Apellido,Tipo_empresa from usuario;

Create view V_Reporteistaspruebaactivo AS
Select * from prueba
Where Activo = 1;

Create view V_reporteUsuario_pago AS 
Select concat((u.Nombre),' ',(u.Apellido)) Nombre_completo
,u.Estado_civil,u.Dirreccion,p.Tipo_tarjeta FROM usuario u
join pago p  on u.Nombre_usuario = p.Nombre_usuario;

Create view V_ReporteAutenticacio_usuario AS
Select u.Apellido,u.Ciudad,u.Tipo_empresa,a.Nombre_usuario,a.Fecha_hora FROM usuario u
join autenticacion a on u.Token = a.Token 