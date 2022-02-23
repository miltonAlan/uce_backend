/*Eliminacio de tablas...*/
drop table if exists af_historico;
drop table if exists af_activo_fijo;
drop table if exists af_concepto;

-- af_concepto
create table af_concepto
(
  ac_consecutivo integer NOT NULL,
  ac_concepto character(100),
  ac_depreciable character(1),
  ac_estado character(1),
  CONSTRAINT af_concepto_pkey PRIMARY KEY (ac_consecutivo),
  CONSTRAINT af_concepto_ac_concepto_key UNIQUE (ac_concepto)
);

-- af_activo_fijo

create table af_activo_fijo
(
  af_consecutivo integer NOT NULL,
  af_estado character(1),
  af_marca character(100),
  af_modelo character(100),
  ac_af_concepto character(100),
  af_valor integer,
  af_dep_acum integer,
  af_responsable character(100),
  af_codigo_barras character(100),
  af_periodo_dep integer,
  af_fecha_creacion character(100),
  CONSTRAINT af_activo_fijo_pkey PRIMARY KEY (af_consecutivo),
  CONSTRAINT af_activo_fijo_ac_af_concepto_fkey FOREIGN KEY (ac_af_concepto)
      REFERENCES af_concepto (ac_concepto) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- af_historico

create table af_historico
(
  af_ah_consecutivo integer NOT NULL,
  ah_fecha character(100) NOT NULL,
  ah_movimiento character(100) NOT NULL,
  ah_valor integer,
  ah_periodo integer,
  ah_responsable character(100),
  CONSTRAINT af_historico_pkey PRIMARY KEY (af_ah_consecutivo, ah_fecha, ah_movimiento),
  CONSTRAINT af_historico_af_ah_consecutivo_fkey FOREIGN KEY (af_ah_consecutivo)
      REFERENCES af_activo_fijo (af_consecutivo) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);
