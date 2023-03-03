--ingreso conceptos base
delete from af_concepto;

insert into af_concepto(ac_consecutivo, ac_concepto,   ac_depreciable, ac_estado)
                 values(1,              'Automoviles', 'Si',           'Vigente');
insert into af_concepto(ac_consecutivo, ac_concepto,   ac_depreciable, ac_estado)
                 values(2,              'Edificios',  'Si',            'Vigente');
insert into af_concepto(ac_consecutivo, ac_concepto,   ac_depreciable, ac_estado)
                 values(3,              'Terrenos',   'No',            'Vigente');
insert into af_concepto(ac_consecutivo, ac_concepto,   ac_depreciable, ac_estado)
                 values(4,              'Tecnologia', 'Si',            'Vigente');
insert into af_concepto(ac_consecutivo, ac_concepto,            ac_depreciable,   ac_estado)
                 values(5,              'Varios', 'Si',            'Vigente');

--ingreso usuarios
delete from af_usuario;


insert into af_usuario (au_consecutivo, au_nombre, au_apellido, au_fecha_nacimiento, au_clave, au_login, au_cedula, au_cargo) 
values ('1', 'Diana', 'Benavides', '18/03/2022','benz1', 'dbenavides', '1723458593', 'Gerente');

insert into af_usuario (au_consecutivo, au_nombre, au_apellido, au_fecha_nacimiento, au_clave, au_login, au_cedula, au_cargo) 
values ('2', 'Jefferson', 'Flores', '13/03/2022','administrador2', 'jflores', '1734126599', 'Administrador');

insert into af_usuario (au_consecutivo, au_nombre, au_apellido, au_fecha_nacimiento, au_clave, au_login, au_cedula, au_cargo) 
values ('3', 'Katherine', 'Maldonado', '13/03/2022','123freak', 'khymaldn', '1725377632', 'Administrador');

insert into af_usuario (au_consecutivo, au_nombre, au_apellido, au_fecha_nacimiento, au_clave, au_login, au_cedula, au_cargo) 
values ('4', 'Alexander', 'Alba', '15/03/2022',	'asdfgh123', 'dobleadmin', '0789346322', 'Administrador');

insert into af_usuario (au_consecutivo, au_nombre, au_apellido, au_fecha_nacimiento, au_clave, au_login, au_cedula, au_cargo) 
values ('5', 'Estefano', 'Guerra', '14/03/2022', 'verde80', 'esfeano09', '1744879097', 'Administrador');

insert into af_usuario (au_consecutivo, au_nombre, au_apellido, au_fecha_nacimiento, au_clave, au_login, au_cedula, au_cargo) 
values ('6', 'Marlon', 'Jaramillo', '14/03/2022', 'dcdnt43', 'jaramilloma', '1723454532', 'Administrador');

insert into af_usuario (au_consecutivo, au_nombre, au_apellido, au_fecha_nacimiento, au_clave, au_login, au_cedula, au_cargo) 
values ('7', 'Vanessa', 'Guiterrez', '12/03/2022', '1234firmes', 'coronelgutierrez', '1725489934', 'Administrador');

insert into af_usuario (au_consecutivo, au_nombre, au_apellido, au_fecha_nacimiento, au_clave, au_login, au_cedula, au_cargo) 
values ('8', 'Diana', 'Quishpe', '18/03/2022', '431991dians', 'dianaquishpe43', '1733447944', 'Administrador');

insert into af_usuario (au_consecutivo, au_nombre, au_apellido, au_fecha_nacimiento, au_clave, au_login, au_cedula, au_cargo) 
values ('9', 'Xavier', 'Hernandez', '16/03/2022', 'fig656', 'XaviB6', '1732256457', 'Administrador');

insert into af_usuario (au_consecutivo, au_nombre, au_apellido, au_fecha_nacimiento, au_clave, au_login, au_cedula, au_cargo) 
values ('10', 'Nicole', 'Chicaiza', '15/03/2022', 'caraM12', 'nicole0998', '1725138522', 'Administrador'); 

insert into af_usuario (au_consecutivo, au_nombre, au_apellido, au_fecha_nacimiento, au_clave, au_login, au_cedula, au_cargo) 
values ('11', 'Milton', 'Paucar', '15/03/1999', '1', 'mpaucar', '1725138522', 'Gerente'); 

--ingreso activos fijos
delete from af_activo_fijo;

insert into af_activo_fijo(af_consecutivo, af_estado,        af_marca,         af_modelo,         ac_af_concepto, 
                           af_valor,       af_dep_acum,      af_codigo_barras, af_periodo_dep,    af_fecha_creacion, 
                           au_af_consecutivo)
                    values(1,              'Vigente',        'Mazda',          'Sport',             1, 
                           10000,           20,                 '132165456',     2,               '01/12/2021',
                           1);                           

insert into af_activo_fijo(af_consecutivo, af_estado,        af_marca,         af_modelo,         ac_af_concepto, 
                           af_valor,       af_dep_acum,      af_codigo_barras, af_periodo_dep,    af_fecha_creacion, 
                           au_af_consecutivo)
                    values(2,              'Vigente',        'Iphone',          'PRO MAX',             4, 
                           1999,           2,                 '654654564',       1,               '28/03/2022',
                           2);
                           
insert into af_activo_fijo(af_consecutivo, af_estado,        af_marca,         af_modelo,         ac_af_concepto, 
                           af_valor,       af_dep_acum,      af_codigo_barras, af_periodo_dep,    af_fecha_creacion, 
                           au_af_consecutivo)
                    values(3,              'Vigente',        'Epson',          'Matricial a color',             4, 
                           250,           12,                 '654567',        2,                '01/16/2022',
                           10);        

insert into af_activo_fijo(af_consecutivo, af_estado,        af_marca,         af_modelo,         ac_af_concepto, 
                           af_valor,       af_dep_acum,      af_codigo_barras, af_periodo_dep,    af_fecha_creacion, 
                           au_af_consecutivo)
                    values(4,              'Vigente',        'Lenovo',          'Laptop IdealPad S340',   4, 
                           900,           152,                '655644564',       3,                '09/22/2020',
                           9);  

insert into af_activo_fijo(af_consecutivo, af_estado,        af_marca,         af_modelo,         ac_af_concepto, 
                           af_valor,       af_dep_acum,      af_codigo_barras, af_periodo_dep,    af_fecha_creacion, 
                           au_af_consecutivo)
                    values(5,              'Vigente',        'LG',          'Monitor led 32 PG',   4, 
                           99,           47,                '897798987',       4,                '01/15/2019',
                           6);                                                                                 

insert into af_activo_fijo(af_consecutivo, af_estado,        af_marca,         af_modelo,         ac_af_concepto, 
                           af_valor,       af_dep_acum,      af_codigo_barras, af_periodo_dep,    af_fecha_creacion, 
                           au_af_consecutivo)
                    values(6,              'Vigente',        'ARPEX',          'Archivo vertical de metal',   5, 
                           12,           6,                '141234234234',       3,                '02/19/2019',
                           6);  

insert into af_activo_fijo(af_consecutivo, af_estado,        af_marca,         af_modelo,         ac_af_concepto, 
                           af_valor,       af_dep_acum,      af_codigo_barras, af_periodo_dep,    af_fecha_creacion, 
                           au_af_consecutivo)
                    values(7,              'Vigente',        'ATLAS',          'Refrigeradora una puerta',   5, 
                           238,           11,                '234222525',       2,                '02/12/2022',
                           6);  
insert into af_activo_fijo(af_consecutivo, af_estado,        af_marca,         af_modelo,         ac_af_concepto, 
                           af_valor,       af_dep_acum,      af_codigo_barras, af_periodo_dep,    af_fecha_creacion, 
                           au_af_consecutivo)
                    values(8,              'Vigente',        'AXIS',          'Camara de seguridad 360',   4, 
                           230,           55,                '654654',       5,                '01/08/2009',
                           8);                             

insert into af_activo_fijo(af_consecutivo, af_estado,        af_marca,         af_modelo,         ac_af_concepto, 
                           af_valor,       af_dep_acum,      af_codigo_barras, af_periodo_dep,    af_fecha_creacion, 
                           au_af_consecutivo)
                    values(9,              'Vigente',        'ATLAS',          'Estanteria de metal',   5, 
                           230,           80,                '1233313',       230,                '01/09/2001',
                           2);  
insert into af_activo_fijo(af_consecutivo, af_estado,        af_marca,         af_modelo,         ac_af_concepto, 
                           af_valor,       af_dep_acum,      af_codigo_barras, af_periodo_dep,    af_fecha_creacion, 
                           au_af_consecutivo)
                    values(10,              'Vigente',        'CONDULAX',          'Cableado estructurado',   5, 
                           2500,           700,                '9878964',       12,                '01/09/1999',
                           3);      
insert into af_activo_fijo(af_consecutivo, af_estado,        af_marca,         af_modelo,         ac_af_concepto, 
                           af_valor,       af_dep_acum,      af_codigo_barras, af_periodo_dep,    af_fecha_creacion, 
                           au_af_consecutivo)
                    values(11,              'Vigente',        'N/A',          'Terreno 2000 ha',   3, 
                           25000,           0,                '123413212',       0,                '01/09/1999',
                           1);                                                                                   



--nuevo registro de algo                           