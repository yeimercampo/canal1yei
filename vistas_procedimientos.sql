---   vistas

-- 1 Vista de noticias y sus categorías correspondientes
CREATE VIEW vista_noticias_categorias AS
SELECT n.idNoticia,
n.titulo,
n.fechaPublicación,
c.nombre AS categoría
FROM noticias n
JOIN categorias c ON n.idCategoria = c.idCategoria;

select *
from vista_noticias_categorias

-- 2 Vista de programas y sus episodios correspondientes
CREATE VIEW vista_programas_episodios AS
SELECT p.idPrograma,
p.sinopsis,
e.titulo AS episodio
FROM programas p
JOIN episodios e ON p.idPrograma = e.idPrograma;

select *
from vista_programas_episodios

--  3 Vista de reportes de fallas con información detallada
CREATE VIEW vista_reportes_fallas AS
SELECT r.idReporteFalla,
r.fecha,
r.hora,
r.descripción,
a.título AS audiovisual,
d.nombre AS departamento,
p.nombre AS persona,
pl.nombre AS plataforma,
ts.nombre AS tipo_señal
FROM reportesFallas r
JOIN audiovisuales a ON r.idAdiovisual = a.idAudiovisual
JOIN Departamentos d ON r.idDepartamento = d.idDepartamento
JOIN personas p ON r.idPersona = p.idPersona
JOIN plataformas pl ON r.idPlataforma = pl.idPlataforma
LEFT JOIN tiposSeñales ts ON r.idTipoSeñal = ts.idTipoSeñal;

select *
from vista_reportes_fallas

-- 4 Vista de entretenimientas con su tipo de clasificación y programa correspondientes
CREATE VIEW vista_entretenimientos_clasificacion AS
SELECT e.idEntretenimiento,
e.titulo,
tc.nombre AS clasificación,
p.sinopsis AS sinopsis_programa
FROM Entretenimientos e
JOIN tiposClasificaciones tc ON e.idTipoClasificación = tc.idTipoClasificación
JOIN programas p ON e.idPrograma = p.idPrograma;

select *
from vista_entretenimientos_clasificacion

--5 Vista de reportes de fallas con información detallada por municipio correspondiente
CREATE VIEW vista_reportes_fallas_municipios AS
SELECT m.nombre AS municipio,
r.idReporteFalla,
r.fecha,
r.hora,
r.descripción,
a.título AS audiovisual,
p.nombre AS persona,
pl.nombre AS plataforma,
ts.nombre AS tipo_señal 
FROM reportesFallas r
JOIN audiovisuales a ON r.idAdiovisual = a.idAudiovisual
JOIN Departamentos d ON r.idDepartamento = d.idDepartamento
JOIN personas p ON r.idPersona = p.idPersona
JOIN plataformas pl ON r.idPlataforma = pl.idPlataforma
LEFT JOIN tiposSeñales ts ON r.idTipoSeñal = ts.idTipoSeñal
LEFT JOIN Municipios m ON d.iddepartamento = m.iddepartamento
order by m.nombre

select *
from vista_reportes_fallas_municipios

-- 6 crear una vista que muestre los programas en emisión actualmente junto con su día y hora de programación
CREATE VIEW vista_programas_en_emision AS
SELECT aa.idAlAire, p.diaProgramación, p.horaProgramación, a.título AS programa
FROM alAire aa
JOIN programaciones p ON aa.idProgamación = p.idProgramación
JOIN audiovisuales a ON aa.idAudiovisual = a.idAudiovisual;

select *
from vista_programas_en_emision


--------------procedimientos ------------------

-- 1 Asignar un programa a una programación en el aire
CREATE OR REPLACE PROCEDURE sp_asignar_programa_al_aire(
    IN p_trasmisión VARCHAR(100),
    IN p_idProgramación INTEGER,
    IN p_idAudiovisual INTEGER
)
AS $$
BEGIN
    IF (p_trasmisión = 'en vivo' OR p_trasmisión = 'grabado') THEN
        INSERT INTO alAire (trasmisión, idProgamación, idAudiovisual)
        VALUES (p_trasmisión, p_idProgramación, p_idAudiovisual);
    ELSE
        -- Puedes manejar el caso de valor incorrecto de trasmisión, como una excepción o un mensaje de error.
        RAISE EXCEPTION 'El valor de trasmisión debe ser "en vivo" o "grabado".';
    END IF;
END;
$$ LANGUAGE plpgsql;


--call sp_asignar_programa_al_aire('grabado',1,22)

--  2 insertar reporte de falla
CREATE OR REPLACE PROCEDURE sp_insertar_reporte_falla(
    IN p_fecha DATE,
    IN p_hora TIME,
    IN p_descripción VARCHAR(200),
    IN p_idAudiovisual INTEGER,
    IN p_idDepartamento INTEGER,
    IN p_idPersona INTEGER,
    IN p_idPlataforma VARCHAR(100),
    IN p_idTipoSeñal INTEGER
)
AS $$
BEGIN
    IF (p_idPlataforma = 'INTERNET') THEN
        INSERT INTO reportesFallas (fecha, hora, descripción, idAdiovisual,
									idDepartamento, idPersona, idPlataforma, idTipoSeñal)
        VALUES (p_fecha, p_hora, p_descripción,p_idAudiovisual,
				p_idDepartamento, p_idPersona, p_idPlataforma, NULL);
    ELSE
        INSERT INTO reportesFallas (fecha, hora, descripción, idAdiovisual,
									idDepartamento, idPersona, idPlataforma, idTipoSeñal)
        VALUES (p_fecha, p_hora, p_descripción, p_idAudiovisual,
				p_idDepartamento, p_idPersona, p_idPlataforma, p_idTipoSeñal);
    END IF;
END;
$$ LANGUAGE plpgsql;

-- 3 procedimiento al ingresar programación
CREATE OR REPLACE PROCEDURE sp_insertar_programacion(
    IN p_diaProgramación VARCHAR(50),
    IN p_horaProgramación TIME
)
AS $$
BEGIN
    IF (p_diaProgramación IN ('lunes', 'martes', 'miércoles', 'jueves', 'viernes', 'sábado', 'domingo')) THEN
        INSERT INTO programaciones (diaProgramación, horaProgramación)
        VALUES (p_diaProgramación, p_horaProgramación);
    ELSE
        RAISE EXCEPTION 'El valor para p_diaProgramación debe ser uno de los siguientes: lunes, martes, miércoles, jueves, viernes, sábado, domingo.';
    END IF;
END;
$$ LANGUAGE plpgsql;

-- 4 procedimiento de ingresar programa
CREATE OR REPLACE PROCEDURE sp_insertar_programa(
    IN p_idPrograma integer,
    IN p_sinopsis varchar(500)
)
AS $$
BEGIN
    IF p_idPrograma NOT IN (SELECT idAudiovisual FROM audiovisuales) THEN
        RAISE EXCEPTION 'ID de programa inválido';
    END IF;
    
    INSERT INTO programas (idPrograma, sinopsis)
    VALUES (p_idPrograma, p_sinopsis);
END;
$$ LANGUAGE plpgsql;



--5 procedimiento de ingresar noticia
CREATE OR REPLACE PROCEDURE sp_insertar_noticia(
    IN p_titulo varchar(500),
    IN p_fechaPublicación DATE,
    IN p_urlPortada varchar(500),
    IN p_cuerpoPublicación varchar(10000),
    IN p_idCategoria integer,
    IN p_idPrograma integer
)
AS $$
BEGIN
    IF p_idCategoria NOT IN (SELECT idCategoria FROM categorias) THEN
        RAISE EXCEPTION 'Categoría inválida';
    END IF;
    
    INSERT INTO noticias (titulo, fechaPublicación, urlPortada, cuerpoPublicación, idCategoria, idPrograma)
    VALUES (p_titulo, p_fechaPublicación, p_urlPortada, p_cuerpoPublicación, p_idCategoria, p_idPrograma);
END;
$$ LANGUAGE plpgsql;



--6 Procedimiento para insertar un nuevo audiovisual
CREATE OR REPLACE PROCEDURE sp_insertar_audiovisual(
    IN p_título varchar(100),
    IN p_urlPortada varchar(300)
)
AS $$
BEGIN
    INSERT INTO audiovisuales (título, urlPortada)
    VALUES (p_título, p_urlPortada);
END;
$$ LANGUAGE plpgsql;



