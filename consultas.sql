

--                consultas

-- 1 cual es el titulo de las noticias que tienen su fecha de publicación entre 2020 a 2023
select titulo
from noticias
where fechaPublicación BETWEEN '01/10/2020' and '31/12/2023'

/*  2 Nombre completo y el nombre de dominio del servicio de email que tiene el usuario que hace los reportes
cuyo telefono empiece con 300*/
select concat (nombre,' ',apellido) as NombreCompleto,teléfono,
	SUBSTRING(email,--obtiene una porción de una cadena
			  POSITION('@' in email) + 1, CHAR_LENGTH(email)
			  ) AS servicioEmail
from personas
where teléfono like '300%'

--  3 ¿Cuántas publiciones de entretenimientos han sido publicados por cada autor?
SELECT autor, COUNT(*) AS cantidad_entretenimientos
FROM Entretenimientos
GROUP BY autor

--4 obtener el reporte de falla más antiguo y más nuevo de cada plataforma
SELECT idPlataforma,
MIN(fecha || ' ' || hora) AS reporte_antiguo, 
MAX(fecha || ' ' || hora) AS reporte_nuevo
FROM reportesFallas
GROUP BY idPlataforma

/* 5  ¿Cuál es la cantidad de publicaciones que se hizo en entretenimiento en cada uno de 
los años 2010, 2021, 2022, 2023? Mostrar los años como columnas de la tabla resultante
*/
SELECT 
COUNT(CASE EXTRACT (year FROM fechapublicación) WHEN 2020 THEN fechapublicación END) AS "2020",
COUNT(CASE EXTRACT (year FROM fechapublicación) WHEN 2021 THEN fechapublicación END) AS "2021",
COUNT(CASE EXTRACT (year FROM fechapublicación) WHEN 2022 THEN fechapublicación END) AS "2022",
COUNT(CASE EXTRACT (year FROM fechapublicación) WHEN 2023 THEN fechapublicación END) AS "2023" 
FROM entretenimientos
GROUP BY identretenimiento 
ORDER BY fechapublicación


/* 6 cuantos municipios hay en total y cuantos hay por cada una de las letras iniciales Y,E,I,C,A,M,P,O. 
de los municpios*/

SELECT COUNT(*) AS cantidadTotal,
    SUM(CASE WHEN nombre LIKE 'Y%' THEN 1 ELSE 0 END) AS cantidad_Y,
    SUM(CASE WHEN nombre LIKE 'E%' THEN 1 ELSE 0 END) AS cantidad_E,
    SUM(CASE WHEN nombre LIKE 'I%' THEN 1 ELSE 0 END) AS cantidad_I,
	SUM(CASE WHEN nombre LIKE 'C%' THEN 1 ELSE 0 END) AS cantidad_C,
	SUM(CASE WHEN nombre LIKE 'A%' THEN 1 ELSE 0 END) AS cantidad_A,
    SUM(CASE WHEN nombre LIKE 'M%' THEN 1 ELSE 0 END) AS cantidad_M,
    SUM(CASE WHEN nombre LIKE 'P%' THEN 1 ELSE 0 END) AS cantidad_P,
    SUM(CASE WHEN nombre LIKE 'O%' THEN 1 ELSE 0 END) AS cantidad_O
FROM Municipios;

--  7 obtener el titulo de la noticia con el titulo más largo de cada año :
SELECT EXTRACT(YEAR FROM fechaPublicación) AS año, titulo
FROM noticias
WHERE LENGTH(titulo) = (
    SELECT MAX(LENGTH(titulo))
    FROM noticias AS n
    WHERE EXTRACT(YEAR FROM n.fechaPublicación) = EXTRACT(YEAR FROM noticias.fechaPublicación)
)
GROUP BY año, titulo;

--  8 Obtener el numero de episodios de cada idprograma.
SELECT idPrograma, COUNT(*) AS total_episodios
FROM episodios
GROUP BY idPrograma
ORDER BY total_episodios DESC

-- 9  Obtener el número de audiovisuales transmitidos en vivo tenga en cuenta que trasmisión puede que no
--este en mayuscula.
SELECT COUNT(*) AS total_en_vivo
FROM alAire
WHERE upper(trasmisión) = 'EN VIVO';



-- 10  Obtener el titulo de todos los audiovisuales que son programas del canal1 y son de trasmisión en vivo:
SELECT título
FROM audiovisuales
WHERE idAudiovisual IN (SELECT idPrograma FROM programas)and idAudiovisual IN (SELECT idAudiovisual
																			  FROM alAire
																			  where upper(Trasmisión)= 'EN VIVO')

-- 11 ¿Cuáles son los programas de audiovisuales que no tienen una sinopsis definida?
SELECT *
FROM audiovisuales
WHERE idAudiovisual IN (
    SELECT idPrograma
    FROM programas
    WHERE sinopsis IS NULL
)

--¿  12  Cuántas noticias se han publicado en la categoría "BOGOTÁ" en el año 2023?
select count(*)
from noticias 
where idCategoria in (select idCategoria
					 from categorias
					 where upper (nombre) ='BOGOTÁ')and EXTRACT(YEAR FROM fechapublicación)=2023

-- 13 Obtener el titulo y sinopsis de todos los programas y sus horarios correspondientes
SELECT a.título, p.sinopsis, pr.diaProgramación, pr.horaProgramación
FROM programas p
JOIN audiovisuales a ON p.idPrograma = a.idAudiovisual
JOIN alAire al ON a.idAudiovisual = al.idAudiovisual
JOIN programaciones pr ON al.idProgamación = pr.idProgramación
order by a.idAudiovisual

/* 14 cual es el título y fecha de publicación de las noticias de los programas cuya 
fecha de publicación sea el '2023-05-25'*/
SELECT n.titulo, n.fechaPublicación, a.título AS programa
FROM noticias n
JOIN programas p ON n.idPrograma = p.idPrograma
JOIN audiovisuales a ON p.idPrograma = a.idAudiovisual
WHERE n.fechaPublicación = '2023-05-25';

--  15 obtener cuantas publicaciones de entretenimientos hay en cada clasificación

SELECT tc.nombre AS categoria, COUNT(*) AS cantidad_programas
FROM tiposclasificaciones tc
LEFT JOIN entretenimientos e ON tc.idtipoclasificación = e.idtipoclasificación
GROUP BY tc.nombre

/* 16 cual es el nombre de la categoría de noticias, el numero de cantidad de noticias asociadas a cada categoría
solo las categorías que tienen más de 3 noticias
*/
SELECT c.nombre AS categoria, COUNT(n.idNoticia) AS cantidad_noticias
FROM categorias c
INNER JOIN noticias n ON c.idCategoria = n.idCategoria
GROUP BY c.idCategoria, c.nombre
HAVING COUNT(n.idNoticia) > 3;


--  17 Obtener el nombre completo de las personas que no aceptaron recibir información y su respectivo departamento
SELECT concat(p.nombre,' ',p.apellido), d.nombre AS departamento
FROM personas p 
INNER JOIN reportesfallas r ON p.idpersona = r.idpersona
INNER JOIN departamentos d ON r.iddepartamento = d.idDepartamento
WHERE p.aceptoInformación = false;

-- 18 Obtener los nombres de los tipos de antenas junto con la cantidad de reportes de fallas para cada tipo de antena.
SELECT ta.nombre, COUNT(rf.idReporteFalla) AS total_reportes
FROM tiposAntenas ta
LEFT JOIN reportesFallas rf ON ta.idTipoAntena = rf.idTipoSeñal
GROUP BY ta.nombre
order by ta.nombre










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



