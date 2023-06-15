CREATE SEQUENCE "public".citf_idcitf_seq START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE "public".origines_idorigine_seq START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE "public".prestations_idprestation_seq START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE "public".quais_idquai_seq START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE "public".types_idtype_seq START WITH 1 INCREMENT BY 1;

CREATE  TABLE "public".citf ( 
	idcitf               bigint DEFAULT nextval('citf_idcitf_seq'::regclass) NOT NULL  ,
	idprestation         bigint  NOT NULL  ,
	idorigine            bigint  NOT NULL  ,
	idtype               bigint  NOT NULL  ,
	idquai               bigint  NOT NULL  ,
	coefftarif           real  NOT NULL  ,
	CONSTRAINT pk_citf PRIMARY KEY ( idcitf )
 );

CREATE  TABLE "public".escales ( 
	idescale             bigserial  NOT NULL  ,
	idnavire             bigint  NOT NULL  ,
	entree               timestamp  NOT NULL  ,
	sortie               timestamp  NOT NULL  ,
	CONSTRAINT pk_escales PRIMARY KEY ( idescale )
 );

CREATE  TABLE "public".escalesprestations ( 
	idescaleprestation   bigserial  NOT NULL  ,
	idescale             bigint  NOT NULL  ,
	idprestation         bigint  NOT NULL  ,
	CONSTRAINT pk_escalesprestations PRIMARY KEY ( idescaleprestation )
 );

CREATE  TABLE "public".navire ( 
	idnavire             bigserial  NOT NULL  ,
	identifiant          text  NOT NULL  ,
	description          text  NOT NULL  ,
	profondeur           real  NOT NULL  ,
	idclient             bigint  NOT NULL  ,
	dureeremorquage      real  NOT NULL  ,
	idorigine            bigint  NOT NULL  ,
	idtype               bigint  NOT NULL  ,
	CONSTRAINT pk_navire PRIMARY KEY ( idnavire )
 );

CREATE  TABLE "public".origines ( 
	idorigine            integer DEFAULT nextval('origines_idorigine_seq'::regclass) NOT NULL  ,
	description          varchar(50)    ,
	CONSTRAINT origines_pkey PRIMARY KEY ( idorigine )
 );

CREATE  TABLE "public".prestations ( 
	idprestation         bigint DEFAULT nextval('prestations_idprestation_seq'::regclass) NOT NULL  ,
	description          text  NOT NULL  ,
	isfixe               bigint DEFAULT 0   ,
	ariary               real    ,
	euro                 real    ,
	limitnonlineaire     real    ,
	tranche              real    ,
	CONSTRAINT pk_prestations PRIMARY KEY ( idprestation )
 );

CREATE  TABLE "public".quais ( 
	idquai               bigserial  NOT NULL  ,
	numero               varchar  NOT NULL  ,
	description          varchar(50)    ,
	profondeur           real  NOT NULL  ,
	CONSTRAINT pk_quai PRIMARY KEY ( idquai )
 );

CREATE  TABLE "public".quaisescales ( 
	idquaiescale         bigserial  NOT NULL  ,
	idquai               bigint  NOT NULL  ,
	idescale             bigint  NOT NULL  ,
	CONSTRAINT pk_quaisescales PRIMARY KEY ( idquaiescale )
 );

CREATE  TABLE "public".types ( 
	idtype               integer DEFAULT nextval('types_idtype_seq'::regclass) NOT NULL  ,
	description          varchar(50)    ,
	CONSTRAINT types_pkey PRIMARY KEY ( idtype )
 );

COMMENT ON TABLE "public".citf IS 'idCITF, idPrestation, idOrigine, idType, idQuai, coeffTarif';

COMMENT ON TABLE "public".escales IS 'idEscale, idNavire, entree, sortie';

COMMENT ON TABLE "public".escalesprestations IS 'idEscalePrestation, idEscale, idPrestation';

COMMENT ON TABLE "public".navire IS 'idNavire, identifiant, description, profondeur, idClient, dureeRemorquage, idOrigine, idType';

COMMENT ON TABLE "public".prestations IS 'idPrestation, description, isFixe, ariary, euro, limitNonLineaire, tranche';

COMMENT ON TABLE "public".quais IS 'idquai, numero, description, profondeur';

COMMENT ON TABLE "public".quaisescales IS 'idQuaiEscale, idQuai, idEscale';

INSERT INTO "public".origines( idorigine, description ) VALUES ( 1, 'International');
INSERT INTO "public".origines( idorigine, description ) VALUES ( 2, 'National');
INSERT INTO "public".prestations( idprestation, description, isfixe, ariary, euro, limitnonlineaire, tranche ) VALUES ( 2, 'Remorquage', 2, null, null, null, 10.0);
INSERT INTO "public".prestations( idprestation, description, isfixe, ariary, euro, limitnonlineaire, tranche ) VALUES ( 3, 'Cession eau', 1, 10000.0, 10.0, null, null);
INSERT INTO "public".prestations( idprestation, description, isfixe, ariary, euro, limitnonlineaire, tranche ) VALUES ( 4, 'Reparation', 1, 50000.0, 50.0, null, null);
INSERT INTO "public".prestations( idprestation, description, isfixe, ariary, euro, limitnonlineaire, tranche ) VALUES ( 1, 'Stationnement', 0, null, null, 180.0, 15.0);
INSERT INTO "public".quais( idquai, numero, description, profondeur ) VALUES ( 1, 'Q1', 'Q1', 10.0);
INSERT INTO "public".quais( idquai, numero, description, profondeur ) VALUES ( 2, 'Q2', 'Q2', 15.0);
INSERT INTO "public".quais( idquai, numero, description, profondeur ) VALUES ( 3, 'Q3', 'Q3', 20.0);
INSERT INTO "public".quais( idquai, numero, description, profondeur ) VALUES ( 4, 'Q4', 'Q4', 30.0);
INSERT INTO "public".types( idtype, description ) VALUES ( 1, 'Petrolier');
INSERT INTO "public".types( idtype, description ) VALUES ( 2, 'Paquebot');
INSERT INTO "public".types( idtype, description ) VALUES ( 3, 'Marchandise');
INSERT INTO "public".types( idtype, description ) VALUES ( 4, 'Peche');