Create Database helpdesk;


CREATE TABLE CIUDADES (
	id_ciudad int NOT NULL,
	nom_ciudad varchar(25) NOT NULL,
	fk_id_depto_provin int NULL,
    PRIMARY KEY (id_ciudad),
    FOREIGN KEY(fk_id_depto_provin) REFERENCES DEPTOS_PROVIN (id_depto_provin)
);

CREATE TABLE CLIENTES(
	id_cli varchar(10) NOT NULL,
	nom_cli varchar(30) NOT NULL,
	tel_cli varchar(10) NOT NULL,
	dir_cli varchar(45) NOT NULL,
	email_cli varchar(30) NOT NULL,
	PRIMARY KEY (id_cli)
); 

CREATE TABLE DEPTOS_PROVIN(
	id_depto_provin int NOT NULL,
	nom_depto_provin varchar(25) NOT NULL,
	fk_id_pais tinyint NOT NULL,
	PRIMARY KEY (id_depto_provin),
    FOREIGN KEY(fk_id_pais) REFERENCES PAIS (id_pais)
); 

CREATE TABLE EQUIPOS(
	id_equipo varchar(10) NOT NULL,
	marca varchar(20) NOT NULL,
	serie varchar(40) NOT NULL,
	color varchar(15) NOT NULL,
	accesorios varchar(40) NOT NULL,
	antecedentes tinyint NOT NULL,
	sintomas_equipo varchar(30) NOT NULL,
	fecha_recepcion date NOT NULL,
	descripcion varchar(30) NOT NULL,
	fk_id_estado tinyint NOT NULL,
	fk_id_factura smallint NOT NULL,
	fk_id_tecn varchar(10) NOT NULL,
	fk_id_cli varchar(10) NOT NULL,
	PRIMARY KEY (id_equipo),
    FOREIGN KEY(fk_id_cli) REFERENCES CLIENTES (id_cli),
    FOREIGN KEY(fk_id_estado) REFERENCES ESTADOS (id_estado),
    FOREIGN KEY(fk_id_factura) REFERENCES FACTURAS (id_factura),
    FOREIGN KEY(fk_id_tecn) REFERENCES TECNICOS (id_tecn)
); 

CREATE TABLE ESTADOS(
	id_estado tinyint NOT NULL,
	rep_anteriores varchar(100) NOT NULL,
	en_servicio varchar(2) NOT NULL,
	fecha_ini_garantia date NOT NULL,
	fecha_fin_garantia date NOT NULL,
	garantia varchar(2) NOT NULL,
	estado varchar(14) NOT NULL,
	tiempo_estimado tinyint NOT NULL,
	complejidad varchar(14) NOT NULL,
	tipo_servicio varchar(14) NOT NULL,
	fk_id_pieza varchar(25) NOT NULL,
	PRIMARY KEY (id_estado),
    FOREIGN KEY(fk_id_pieza) REFERENCES PIEZAS (id_pieza)
);

CREATE TABLE FACTURAS(
	id_factura smallint NOT NULL,
	fecha date NOT NULL,
	nota varchar(50) NOT NULL,
	fk_id_cli varchar(10) NOT NULL,
	fk_id_tecn varchar(10) NOT NULL,
	fk_id_equi varchar(10) NULL,
	PRIMARY KEY (id_factura),
    FOREIGN KEY(fk_id_cli) REFERENCES CLIENTES (id_cli),
    FOREIGN KEY(fk_id_tecn) REFERENCES TECNICOS (id_tecn)
); 

CREATE TABLE PAIS(
	id_pais tinyint NOT NULL,
	nom_pais varchar(15) NOT NULL,
	PRIMARY KEY (id_pais)
); 

CREATE TABLE PIEZAS(
	id_pieza varchar(25) NOT NULL,
	nom_pieza varchar(30) NOT NULL,
	tipo_pieza varchar(20) NOT NULL,
	marca_pieza varchar(20) NOT NULL,
	costo INT NOT NULL,
	fecha_compra date NOT NULL,
	fecha_ingre date NOT NULL,
	cantidad tinyint NOT NULL,
	fk_id_provee varchar(10) NOT NULL,
	PRIMARY KEY (id_pieza),
    FOREIGN KEY(fk_id_provee) REFERENCES PROVEEDORES (nit)
); 

CREATE TABLE PROVEEDORES(
	nit varchar(10) NOT NULL,
	nom_prove varchar(30) NOT NULL,
	tel_prove int NOT NULL,
	dir_prove varchar(45) NOT NULL,
	email_prove varchar(30) NOT NULL,
	PRIMARY KEY (nit)
); 

CREATE TABLE SUCURSALES(
	id_sucursal int NOT NULL,
	nom_sucursal varchar(25) NOT NULL,
	dir_sucursal varchar(45) NOT NULL,
	tel_sucursal varchar(10) NOT NULL,
	fk_id_ciudad int NOT NULL,
	PRIMARY KEY (id_sucursal),
    FOREIGN KEY(fk_id_ciudad) REFERENCES CIUDADES (id_ciudad)
    
); 

CREATE TABLE TECNICOS(
	id_tecn varchar(10) NOT NULL,
	nom_tecn varchar(30) NOT NULL,
	tel_tecn varchar(10) NOT NULL,
	dir_tecn varchar(45) NOT NULL,
	fecha_ingre date NOT NULL,
	email_cli varchar(30) NOT NULL,
	car varchar(20) NOT NULL,
	PRIMARY KEY (id_tecn)
);