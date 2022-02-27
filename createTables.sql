/*Eliminacio de tablas...*/
drop table if exists af_historico;
drop table if exists af_activo_fijo;
drop table if exists af_concepto;
drop table if exists af_usuario;
drop table if exists af_variables;

-- af_concepto
create table af_concepto
(
  ac_consecutivo double precision NOT NULL,
  ac_concepto character varying(255),
  ac_depreciable character varying(1),
  ac_estado character(1),
  CONSTRAINT af_concepto_pkey PRIMARY KEY (ac_consecutivo),
  CONSTRAINT af_concepto_ac_concepto_key UNIQUE (ac_concepto)
);

-- af_usuario
create table af_usuario
(
  au_consecutivo double precision NOT NULL,
  au_nombre character(100),
  au_apellido character(100),
  au_fecha_nacimiento character(100),
  au_clave character(100),
  au_login character(100),
  au_cedula character(50),
  au_cargo character(100),
  CONSTRAINT af_usuario_pkey PRIMARY KEY (au_consecutivo)
);

-- af_activo_fijo
create table af_activo_fijo
(
  af_consecutivo double precision NOT NULL,
  af_estado character(1),
  af_marca character(100),
  af_modelo character(100),
  ac_af_concepto character(100),
  af_valor double precision,
  af_dep_acum double precision,
  af_codigo_barras character(100),
  af_periodo_dep double precision,
  af_fecha_creacion character(100),
  au_af_consecutivo double precision,
  CONSTRAINT af_activo_fijo_pkey PRIMARY KEY (af_consecutivo),
  CONSTRAINT af_activo_fijo_ac_af_concepto_fkey FOREIGN KEY (ac_af_concepto)
      REFERENCES af_concepto (ac_concepto) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT af_activo_fijo_au_af_consecutivo_fkey FOREIGN KEY (au_af_consecutivo)
      REFERENCES af_usuario (au_consecutivo) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- af_historico

create table af_historico
(
  af_ah_consecutivo double precision NOT NULL,
  ah_fecha character(100) NOT NULL,
  ah_movimiento character(100) NOT NULL,
  ah_valor double precision,
  ah_periodo double precision,
  ah_responsable character(100),
  CONSTRAINT af_historico_pkey PRIMARY KEY (af_ah_consecutivo, ah_fecha, ah_movimiento),
  CONSTRAINT af_historico_af_ah_consecutivo_fkey FOREIGN KEY (af_ah_consecutivo)
      REFERENCES af_activo_fijo (af_consecutivo) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- af_variables
create table af_variables
(
  av_consecutivo double precision NOT NULL,
  av_variable character varying(255),
  av_descripcion character varying(255),
  av_valor character(255),
  CONSTRAINT af_variables_pkey PRIMARY KEY (av_consecutivo)
);
