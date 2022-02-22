drop table if exists sid_registros_padre;


create table sid_registros_padre (
rp_consecutivo       int         NOT NULL,    
     CONSTRAINT cliente_pkey PRIMARY KEY (rp_consecutivo)
);