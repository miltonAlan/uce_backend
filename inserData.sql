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
