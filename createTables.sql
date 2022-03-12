/*Eliminacio de tablas...*/
drop table if exists af_historico;
drop table if exists af_activo_fijo;
drop table if exists af_concepto;
drop table if exists af_usuario;
drop table if exists af_variables;

-- af_concepto
create table af_concepto
(
  ac_consecutivo SERIAL ,
  ac_concepto character varying(255),
  ac_depreciable character varying(255),
  ac_estado character varying(255),
  CONSTRAINT af_concepto_pkey PRIMARY KEY (ac_consecutivo),
  CONSTRAINT af_concepto_ac_concepto_key UNIQUE (ac_concepto)
);

-- af_usuario
create table af_usuario
(
  au_consecutivo double precision NOT NULL,
  au_nombre character varying(100),
  au_apellido character varying(100),
  au_fecha_nacimiento character varying(100),
  au_clave character varying(100),
  au_login character varying(100),
  au_cedula character varying(50),
  au_cargo character varying(100),
  CONSTRAINT af_usuario_pkey PRIMARY KEY (au_consecutivo)
);

-- af_activo_fijo
create table af_activo_fijo
(
  af_consecutivo double precision NOT NULL,
  af_estado character varying(1),
  af_marca character varying(100),
  af_modelo character varying(100),
  ac_af_concepto character varying(100),
  af_valor double precision,
  af_dep_acum double precision,
  af_codigo_barras character varying(100),
  af_periodo_dep double precision,
  af_fecha_creacion character varying(100),
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
  ah_fecha character varying(100) NOT NULL,
  ah_movimiento character varying(100) NOT NULL,
  ah_valor double precision,
  ah_periodo double precision,
  ah_responsable character varying(100),
  CONSTRAINT af_historico_pkey PRIMARY KEY (af_ah_consecutivo),
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
  av_valor character varying(255),
  CONSTRAINT af_variables_pkey PRIMARY KEY (av_consecutivo)
);
