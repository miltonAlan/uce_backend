/*
Script para inserción de datos de muestra
*/

delete from af_usuario;


INSERT INTO af_usuario (au_consecutivo, au_nombre, au_apellido, au_fecha_nacimiento, au_clave, au_login, au_cedula, au_cargo) 
Values ('1', 'Diana', 'Benavides', '18/03/2022','benz1', 'dbenavides', '1723458593', 'Gerente');

INSERT INTO af_usuario (au_consecutivo, au_nombre, au_apellido, au_fecha_nacimiento, au_clave, au_login, au_cedula, au_cargo) 
Values ('2', 'Jefferson', 'Flores', '13/03/2022','administrador2', 'jflores', '1734126599', 'Administrador');

INSERT INTO af_usuario (au_consecutivo, au_nombre, au_apellido, au_fecha_nacimiento, au_clave, au_login, au_cedula, au_cargo) 
Values ('3', 'Katherine', 'Maldonado', '13/03/2022','123freak', 'khymaldn', '1725377632', 'Administrador');

INSERT INTO af_usuario (au_consecutivo, au_nombre, au_apellido, au_fecha_nacimiento, au_clave, au_login, au_cedula, au_cargo) 
Values ('4', 'Alexander', 'Alba', '15/03/2022',	'asdfgh123', 'dobleadmin', '0789346322', 'Administrador');

INSERT INTO af_usuario (au_consecutivo, au_nombre, au_apellido, au_fecha_nacimiento, au_clave, au_login, au_cedula, au_cargo) 
Values ('5', 'Estefano', 'Guerra', '14/03/2022', 'verde80', 'esfeano09', '1744879097', 'Administrador');

INSERT INTO af_usuario (au_consecutivo, au_nombre, au_apellido, au_fecha_nacimiento, au_clave, au_login, au_cedula, au_cargo) 
Values ('6', 'Marlon', 'Jaramillo', '14/03/2022', 'dcdnt43', 'jaramilloma', '1723454532', 'Administrador');

INSERT INTO af_usuario (au_consecutivo, au_nombre, au_apellido, au_fecha_nacimiento, au_clave, au_login, au_cedula, au_cargo) 
Values ('7', 'Vanessa', 'Guiterrez', '12/03/2022', '1234firmes', 'coronelgutierrez', '1725489934', 'Administrador');

INSERT INTO af_usuario (au_consecutivo, au_nombre, au_apellido, au_fecha_nacimiento, au_clave, au_login, au_cedula, au_cargo) 
Values ('8', 'Diana', 'Quishpe', '18/03/2022', '431991dians', 'dianaquishpe43', '1733447944', 'Administrador');

INSERT INTO af_usuario (au_consecutivo, au_nombre, au_apellido, au_fecha_nacimiento, au_clave, au_login, au_cedula, au_cargo) 
Values ('9', 'Xavier', 'Hernandez', '16/03/2022', 'fig656', 'XaviB6', '1732256457', 'Administrador');

INSERT INTO af_usuario (au_consecutivo, au_nombre, au_apellido, au_fecha_nacimiento, au_clave, au_login, au_cedula, au_cargo) 
Values ('10', 'Nicole', 'Chicaiza', '15/03/2022', 'caraM12', 'nicole0998', '1725138522', 'Administrador'); 


select * from af_concepto;