
--creacion de tablas e insercion de datos

CREATE TABLE audiovisuales (
	idAudiovisual serial PRIMARY KEY,
	título varchar(100) NOT NULL,
	urlPotrtada varchar(300) NOT NULL UNIQUE
);
	
CREATE TABLE programas (
	idPrograma int PRIMARY KEY NOT NULL,
	sinopsis varchar(500)
);

CREATE TABLE categorias (
	idCategoria serial PRIMARY KEY NOT NULL,
	nombre varchar(100) NOT NULL
);

CREATE TABLE noticias (
	idNoticia serial PRIMARY KEY NOT NULL,
	titulo varchar(500) NOT NULL,
	fechaPublicación DATE NOT NULL,
	urlPortada varchar(500) NOT NULL UNIQUE,
	cuerpoPublicación varchar(10000) NOT NULL,
	idCategoria integer NOT NULL,
	idPrograma integer NOT NULL
);

CREATE TABLE tiposClasificaciones (
	idTipoClasificación serial PRIMARY KEY,
	nombre varchar(100) NOT NULL
);


CREATE TABLE Entretenimientos (
	idEntretenimiento serial PRIMARY KEY NOT NULL,
	titulo varchar(500) NOT NULL,
	autor varchar(100) NOT NULL,
	fechaPublicación DATE NOT NULL,
	horaPublicación TIME NOT NULL,
	urlPortada varchar(500) NOT NULL UNIQUE,
	cuerpoPublicación varchar(10000) NOT NULL,
	idTipoClasificación integer NOT NULL,
	idPrograma integer NOT NULL
);
		 
CREATE TABLE episodios (
	idEpisodio int PRIMARY KEY NOT NULL,
	urlPortada varchar(300) NOT NULL,
	titulo varchar(500) NOT NULL,
	urlEpisodio varchar(300) NOT NULL UNIQUE,
	idPrograma integer NOT NULL
);

CREATE TABLE programaciones (
	idProgramación serial PRIMARY KEY NOT NULL,
	diaProgramación varchar(50) NOT NULL,
	horaProgramación TIME NOT NULL
);

CREATE TABLE alAire (
	idAlAire serial PRIMARY KEY NOT NULL,
	trasmisión varchar(100) NOT NULL,
	idProgamación integer NOT NULL,
	idAudiovisual integer NOT NULL
);

CREATE TABLE videos (
	idVideo int PRIMARY KEY,
	urlVideo varchar(300) NOT NULL UNIQUE,
	fechaPublicación DATE NOT NULL
);
	 
CREATE TABLE videosProgramas (
	idVideoPrograma int PRIMARY KEY NOT NULL,
	autor varchar(100) NOT NULL,
	descripción varchar(500) NOT NULL,
	idPrograma integer NOT NULL
);

CREATE TABLE videosNormales (
	idVideoNormal int PRIMARY KEY,
	autor varchar(100) NOT NULL,
	descripción varchar(500) NOT NULL
);
	
CREATE TABLE reportesFallas (
	idReporteFalla serial PRIMARY KEY,
	fecha DATE NOT NULL,
	hora TIME NOT NULL,
	descripción varchar(200),
	idAdiovisual integer NOT NULL,
	idDepartamento integer NOT NULL,
	idPersona integer NOT NULL,
	idPlataforma integer NOT NULL,
	idTipoSeñal integer NULL
);

CREATE TABLE personas (
	idPersona serial PRIMARY KEY NOT NULL,
	nombre varchar(100) NOT NULL,
	apellido varchar(100) NOT NULL,
	documentoIdentidad float8 NOT NULL,
	teléfono varchar(10) NOT NULL,
	aceptoInformación BOOLEAN NOT NULL,
	email varchar(200) NOT NULL UNIQUE
);

CREATE TABLE plataformas (
	idPlataforma serial PRIMARY KEY NOT NULL,
	nombre varchar(100) NOT NULL
);

CREATE TABLE tiposAntenas (
	idTipoAntena serial PRIMARY KEY NOT NULL,
	nombre varchar(50) NOT NULL,
	idtiposSeñales integer NOT NULL,
	idTipoFalla integer NOT NULL
);

CREATE TABLE TiposFallas (
	idTipoFalla serial PRIMARY KEY NOT NULL,
	nombre varchar(50) NOT NULL
);

CREATE TABLE Departamentos (
	idDepartamento serial PRIMARY KEY NOT NULL,
	nombre varchar(100) NOT NULL
);

CREATE TABLE Municipios (
	idMunicipio serial PRIMARY KEY NOT NULL,
	nombre varchar(255) NOT NULL,
	dirección varchar(500) NOT NULL,
	idDepartamento int NOT NULL
);
	
CREATE TABLE tiposSeñales (
	idTipoSeñal serial PRIMARY KEY NOT NULL,
	nombre varchar(100) NOT NULL
);

		
		
-------ALteraciones------------

ALTER TABLE programas ADD  FOREIGN KEY (idPrograma) REFERENCES audiovisuales(idAudiovisual);

ALTER TABLE noticias ADD FOREIGN KEY (idCategoria) REFERENCES categorias(idCategoria);
ALTER TABLE noticias ADD FOREIGN KEY (idPrograma) REFERENCES programas(idPrograma);

ALTER TABLE Entretenimientos ADD FOREIGN KEY (idTipoClasificación) REFERENCES tiposClasificaciones(idTipoClasificación);
ALTER TABLE Entretenimientos ADD FOREIGN KEY (idPrograma) REFERENCES programas(idPrograma);

ALTER TABLE episodios ADD FOREIGN KEY (idPrograma) REFERENCES programas(idPrograma);

ALTER TABLE videos ADD FOREIGN KEY (idVideo) REFERENCES audiovisuales(idAudiovisual);

ALTER TABLE alAire ADD FOREIGN KEY (idProgamación) REFERENCES programaciones(idProgramación);
ALTER TABLE alAire ADD FOREIGN KEY (idAudiovisual) REFERENCES audiovisuales(idAudiovisual);

ALTER TABLE videosProgramas ADD FOREIGN KEY (idVideoPrograma) REFERENCES videos(idVideo);
ALTER TABLE videosProgramas ADD FOREIGN KEY (idPrograma) REFERENCES programas(idPrograma);

ALTER TABLE videosNormales ADD FOREIGN KEY (idVideoNormal) REFERENCES videos(idVideo);

ALTER TABLE reportesFallas ADD FOREIGN KEY (idAdiovisual) REFERENCES audiovisuales(idAudiovisual);
ALTER TABLE reportesFallas ADD FOREIGN KEY (idDepartamento) REFERENCES Departamentos(idDepartamento);
ALTER TABLE reportesFallas ADD FOREIGN KEY (idPersona) REFERENCES personas(idPersona);
ALTER TABLE reportesFallas ADD FOREIGN KEY (idPlataforma) REFERENCES plataformas(idPlataforma);
ALTER TABLE reportesFallas ADD FOREIGN KEY (idTipoSeñal) REFERENCES tiposSeñales(idTipoSeñal);

ALTER TABLE tiposAntenas ADD FOREIGN KEY (idtiposSeñales) REFERENCES tiposSeñales(idTipoSeñal);
ALTER TABLE tiposAntenas ADD FOREIGN KEY (idTipoFalla) REFERENCES TiposFallas(idTipoFalla);

ALTER TABLE Municipios ADD FOREIGN KEY (idDepartamento) REFERENCES Departamentos(idDepartamento);


