--     Insertar datos

INSERT INTO audiovisuales (título, urlpotrtada)
VALUES
    ('Stranger Things', 'https://example.com/stranger-things.jpg'),
    ('Game of Thrones', 'https://example.com/game-of-thrones.jpg'),
    ('Breaking Bad', 'https://example.com/breaking-bad.jpg'),
    ('The Crown', 'https://example.com/the-crown.jpg'),
    ('Stranger Things 2', 'https://example.com/stranger-things-2.jpg'),
    ('Friends', 'https://example.com/friends.jpg'),
    ('The Office', 'https://example.com/the-office.jpg'),
    ('La Casa de Papel', 'https://example.com/la-casa-de-papel.jpg'),
    ('The Big Bang Theory', 'https://example.com/the-big-bang-theory.jpg'),
    ('Black Mirror', 'https://example.com/black-mirror.jpg'),
    ('The Witcher', 'https://example.com/the-witcher.jpg'),
    ('Narcos', 'https://example.com/narcos.jpg'),
    ('Stranger Things 3', 'https://example.com/stranger-things-3.jpg'),
    ('The Mandalorian', 'https://example.com/the-mandalorian.jpg'),
    ('The Crown 2', 'https://example.com/the-crown-2.jpg'),
	('Noticiero de la mañana', 'https://example.com/noticiero-manana.jpg'),
    ('Noticiero vespertino', 'https://example.com/noticiero-vespertino.jpg'),
    ('Programa de noticias políticas', 'https://example.com/noticias-politicas.jpg'),
    ('Noticiero deportivo', 'https://example.com/noticiero-deportivo.jpg'),
    ('Noticiero de espectáculos', 'https://example.com/noticiero-espectaculos.jpg'),
    ('Programa de noticias internacionales', 'https://example.com/noticias-internacionales.jpg'),
    ('Noticiero de economía y negocios', 'https://example.com/noticiero-economia.jpg'),
    ('Programa de noticias científicas', 'https://example.com/noticias-cientificas.jpg'),
	('Lo sé todo', 'https://example.com/lo-se-todo.jpg');

INSERT INTO programas (idPrograma, sinopsis)
VALUES 
(1, 'Un grupo de amigos se enfrenta a extraños sucesos en su pequeño pueblo.'),
       (2, 'Una lucha por el Trono de Hierro en un mundo de reinos y personajes poderosos.'),
       (3, 'Un profesor de química se convierte en un reconocido narcotraficante.'),
       (4, 'La vida de la Reina Isabel II y los eventos históricos que marcaron su reinado.'),
       (5, 'La segunda temporada de la serie Stranger Things.'),
       (6, 'Las vidas y relaciones de un grupo de amigos en la ciudad de Nueva York.'),
       (7, 'La vida cotidiana de los empleados de una oficina y su excéntrico jefe.'),
       (8, 'Un grupo de criminales realiza un gran atraco a la Casa de Moneda de España.'),
       (9, 'Las cómicas situaciones de un grupo de amigos científicos y su vecina.'),
       (10, 'Historias independientes que exploran el lado oscuro de la tecnología y la sociedad.'),
       (11, 'Un cazador de monstruos lucha por encontrar su lugar en un mundo oscuro y peligroso.'),
       (12, 'La historia del auge y caída del imperio del narcotráfico en Colombia.'),
       (13, 'La tercera temporada de la serie Stranger Things.'),
       (14, 'Las aventuras de un cazarrecompensas en la galaxia de Star Wars.'),
       (15, 'La segunda temporada de la serie The Crown.'),
	   (16, 'Noticiero de la mañana con las noticias más recientes.'),
	   (17, 'Noticiero vespertino que ofrece un resumen de las noticias del día.'),
		(18, 'Programa de noticias políticas y análisis de los eventos actuales.'),
		(19, 'Noticiero deportivo con los resultados y destacados de los eventos deportivos.'),
		(20, 'Noticiero de espectáculos que muestra las últimas noticias de la industria del entretenimiento.'),
		(21, 'Programa de noticias internacionales con cobertura de eventos en todo el mundo.'),
		(22, 'Noticiero de economía y negocios que ofrece información financiera y consejos.'),
		(23, 'Programa de noticias científicas y avances en el campo de la ciencia y la tecnología.'),
		(24,null);

INSERT INTO categorias (idCategoria,nombre)
VALUES (1,'NACIONAL'),
		(2,'BOGOTÁ'),
		(3,'MUNDO'),
		(4,'DEPORTES'),
		(5,'ECONOMÍA'),
		(6,'EMPRESAS'),
		(7,'1 OPINA'),
		(8,'POLÍTICA');

INSERT INTO noticias (titulo, fechaPublicación, urlPortada, cuerpoPublicación, idCategoria, idPrograma)
VALUES
	('El presidente inaugura un nuevo hospital en la capital', '2023-05-26', 'https://ejemplo.com/noticia1', 'El presidente de la nación inauguró hoy un moderno hospital en la ciudad capital. La nueva instalación cuenta con tecnología de última generación y brindará servicios médicos a miles de personas.', 1, 16),
	('Se declara estado de emergencia por fuertes lluvias en la ciudad', '2023-05-25', 'https://ejemplo.com/noticia2', 'Las autoridades locales han declarado estado de emergencia debido a las intensas lluvias que han causado inundaciones en varios sectores de la ciudad. Se están tomando medidas para evacuar a las personas afectadas y brindarles asistencia.', 2, 17),
	('Acuerdo histórico entre dos países para impulsar el comercio', '2023-05-24', 'https://ejemplo.com/noticia3', 'Los líderes de dos países vecinos han firmado un acuerdo histórico para fortalecer las relaciones comerciales. El tratado busca impulsar el intercambio de bienes y servicios, así como promover la inversión y el desarrollo económico en ambas naciones.', 3, 21),
	('Equipo local se corona campeón nacional de fútbol', '2023-05-23', 'https://ejemplo.com/noticia4', 'El equipo de fútbol de la ciudad se consagró campeón nacional tras una emocionante final disputada en el estadio principal. Los jugadores y aficionados celebraron la victoria en las calles de la ciudad.', 4, 19),
	('Nuevas medidas económicas para impulsar el crecimiento', '2023-05-22', 'https://ejemplo.com/noticia5', 'El gobierno ha anunciado un paquete de medidas económicas destinadas a estimular el crecimiento y fortalecer la economía del país. Entre las medidas se encuentran incentivos fiscales para las empresas, programas de capacitación laboral y proyectos de infraestructura.', 5, 22),
	('Avance científico prometedor en la lucha contra el cáncer', '2023-05-21', 'https://ejemplo.com/noticia6', 'Un equipo de investigadores ha logrado un avance significativo en el desarrollo de nuevos tratamientos contra el cáncer. Los resultados preliminares muestran promesa en la inhibición del crecimiento tumoral y podrían abrir nuevas posibilidades terapéuticas.', 6, 23),
	('Análisis político sobre los resultados electorales', '2023-05-20', 'https://ejemplo.com/noticia7', 'Expertos en política analizan los resultados de las recientes elecciones y ofrecen sus perspectivas sobre el panorama político actual. Se discuten las implicaciones de los resultados y las posibles estrategias de los partidos en el futuro.', 8, 18),
	('Nueva película de superhéroes bate récords de taquilla', '2023-05-19', 'https://ejemplo.com/noticia8', 'La última entrega de la exitosa franquicia de superhéroes ha arrasado en la taquilla desde su estreno. La película ha recibido elogios de críticos y audiencias por su emocionante trama y efectos especiales de vanguardia.', 7, 20),
	('El presidente anuncia medidas para impulsar la educación', '2023-05-18', 'https://ejemplo.com/noticia9', 'En un discurso público, el presidente anunció una serie de medidas destinadas a mejorar la calidad de la educación en el país. Las iniciativas incluyen la construcción de nuevas escuelas, la capacitación de docentes y la implementación de programas educativos innovadores.', 2, 17),
	('Descubren yacimiento arqueológico de gran importancia', '2023-05-17', 'https://ejemplo.com/noticia10', 'Un equipo de arqueólogos ha descubierto un yacimiento de gran importancia histórica en una zona remota del país. Los hallazgos incluyen artefactos antiguos y evidencia de una antigua civilización hasta ahora desconocida.', 2, 17),
	('Se inaugura la nueva sede de una importante empresa', '2023-05-16', 'https://ejemplo.com/noticia11', 'Una reconocida empresa ha inaugurado su nueva sede central en la ciudad. La moderna infraestructura busca impulsar el crecimiento de la compañía y brindar un ambiente de trabajo innovador para sus empleados.', 2, 17),
	('Estreno de una obra de teatro aclamada por la crítica', '2023-05-15', 'https://ejemplo.com/noticia12', 'Una nueva obra de teatro ha debutado en el principal teatro de la ciudad, recibiendo elogios por parte de críticos y espectadores. La puesta en escena, la actuación y el guion han sido destacados como elementos sobresalientes de la producción.', 7, 19),
	('Importante conferencia internacional sobre tecnología', '2023-05-14', 'https://ejemplo.com/noticia13', 'Se llevó a cabo una conferencia internacional sobre tecnología en la ciudad, reuniendo a expertos y líderes de la industria de todo el mundo. Durante el evento, se discutieron las últimas tendencias y se presentaron innovaciones disruptivas en diversos campos tecnológicos.', 3, 22),
    ('El presidente inaugura un nuevo hospital en la capital', '2022-05-26', 'https://ejemplo.com/noticia22', 'El presidente de la nación inauguró hoy un moderno hospital en la ciudad capital. La nueva instalación cuenta con tecnología de última generación y brindará servicios médicos a miles de personas.', 1, 16),
    ('Se declara estado de emergencia por fuertes lluvias en la ciudad', '2022-05-25', 'https://ejemplo.com/noticia23', 'Las autoridades locales han declarado estado de emergencia debido a las intensas lluvias que han causado inundaciones en varios sectores de la ciudad. Se están tomando medidas para evacuar a las personas afectadas y brindarles asistencia.', 2, 17),
    ('Acuerdo histórico entre dos países para impulsar el comercio', '2022-05-24', 'https://ejemplo.com/noticia34', 'Los líderes de dos países vecinos han firmado un acuerdo histórico para fortalecer las relaciones comerciales. El tratado busca impulsar el intercambio de bienes y servicios, así como promover la inversión y el desarrollo económico en ambas naciones.', 3, 21),
    ('Equipo local se corona campeón nacional de fútbol', '2021-05-23', 'https://ejemplo.com/noticia45', 'El equipo de fútbol de la ciudad se consagró campeón nacional tras una emocionante final disputada en el estadio principal. Los jugadores y aficionados celebraron la victoria en las calles de la ciudad.', 4, 19),
    ('Nuevas medidas económicas para impulsar el crecimiento', '2021-05-22', 'https://ejemplo.com/noticia54', 'El gobierno ha anunciado un paquete de medidas económicas destinadas a estimular el crecimiento y fortalecer la economía del país. Entre las medidas se encuentran incentivos fiscales para las empresas, programas de capacitación laboral y proyectos de infraestructura.', 5, 22),
    ('Avance científico prometedor en la lucha contra el cáncer', '2021-05-21', 'https://ejemplo.com/noticia65', 'Un equipo de investigadores ha logrado un avance significativo en el desarrollo de nuevos tratamientos contra el cáncer. Los resultados preliminares muestran promesa en la inhibición del crecimiento tumoral y podrían abrir nuevas posibilidades terapéuticas.', 6, 23),
    ('Análisis político sobre los resultados electorales', '2020-05-20', 'https://ejemplo.com/noticia76', 'Expertos en política analizan los resultados de las recientes elecciones y ofrecen sus perspectivas sobre el panorama político actual. Se discuten las implicaciones de los resultados y las posibles estrategias de los partidos en el futuro.', 8, 18),
    ('Nueva película de superhéroes bate récords de taquilla', '2013-05-19', 'https://ejemplo.com/noticia87', 'La última entrega de la exitosa franquicia de superhéroes ha arrasado en la taquilla desde su estreno. La película ha recibido elogios de críticos y audiencias por su emocionante trama y efectos especiales de vanguardia.', 7, 20),
    ('El presidente anuncia medidas para impulsar la educación', '2013-05-18', 'https://ejemplo.com/noticia98', 'En un discurso público, el presidente anunció una serie de medidas destinadas a mejorar la calidad de la educación en el país. Las iniciativas incluyen la construcción de nuevas escuelas, la capacitación de docentes y la implementación de programas educativos innovadores.', 2, 17),
    ('Descubren yacimiento arqueológico de gran importancia', '2011-05-17', 'https://ejemplo.com/noticia108', 'Un equipo de arqueólogos ha descubierto un yacimiento de gran importancia histórica en una zona remota del país. Los hallazgos incluyen artefactos antiguos y evidencia de una antigua civilización hasta ahora desconocida.', 2, 17),
    ('Se inaugura la nueva sede de una importante empresa', '2019-05-16', 'https://ejemplo.com/noticia118', 'Una reconocida empresa ha inaugurado su nueva sede central en la ciudad. La moderna infraestructura busca impulsar el crecimiento de la compañía y brindar un ambiente de trabajo innovador para sus empleados.', 2, 17),
    ('Estreno de una obra de teatro aclamada por la crítica', '2020-05-15', 'https://ejemplo.com/noticia128', 'Una nueva obra de teatro ha debutado en el principal teatro de la ciudad, recibiendo elogios por parte de críticos y espectadores. La puesta en escena, la actuación y el guion han sido destacados como elementos sobresalientes de la producción.', 7, 19),
    ('Importante conferencia internacional sobre tecnología', '2020-05-14', 'https://ejemplo.com/noticia138', 'Se llevó a cabo una conferencia internacional sobre tecnología en la ciudad, reuniendo a expertos y líderes de la industria de todo el mundo. Durante el evento, se discutieron las últimas tendencias y se presentaron innovaciones disruptivas en diversos campos tecnológicos.', 3, 22);

INSERT INTO tiposClasificaciones (nombre)
VALUES ('Entretetenimiento'),
       ('Virales'),
       ('Ideas utiles'),
	   ('Estilo de vida');

INSERT INTO Entretenimientos (titulo, autor, fechaPublicación, horaPublicación, urlPortada, cuerpoPublicación, idTipoClasificación, idPrograma)
VALUES
    ('Viaje a la playa', 'María González', '2023-05-26', '09:00:00', 'https://example.com/url-portada1.jpg', 'Disfrutando del sol y la arena en la playa.', 1, 24),
    ('Recetas deliciosas', 'Ana Rodríguez', '2023-05-27', '18:45:00', 'https://example.com/url-portada2.jpg', 'Aprende a cocinar platos exquisitos con ingredientes simples.', 3, 24),
    ('Entrevista exclusiva', 'Carlos Sánchez', '2023-05-28', '11:30:00', 'https://example.com/url-portada3.jpg', 'Conversación con una personalidad destacada del mundo del entretenimiento.', 2, 24),
    ('Consejos de moda', 'Laura Martínez', '2023-05-29', '15:15:00', 'https://example.com/url-portada4.jpg', 'Descubre las últimas tendencias de moda y cómo lucirlas.', 4, 24),
    ('Rutina de ejercicios', 'Pedro López', '2023-05-30', '07:00:00', 'https://example.com/url-portada5.jpg', 'Ejercicios para mantenerte en forma y saludable.', 3, 24),
    ('Resumen de eventos', 'Sara Ramírez', '2023-05-31', '20:00:00', 'https://example.com/url-portada6.jpg', 'Un repaso de los acontecimientos más relevantes de la semana.', 1, 24),
    ('Concierto en vivo', 'Carlos Hernández', '2023-06-01', '21:30:00', 'https://example.com/url-portada7.jpg', 'Disfruta de un concierto en vivo de tu artista favorito.', 2, 24),
    ('Entrenamiento deportivo', 'Daniel Torres', '2023-06-02', '08:30:00', 'https://example.com/url-portada8.jpg', 'Sesión de entrenamiento intensivo para mejorar tu rendimiento físico.', 4, 24),
    ('Explorando la naturaleza', 'María González', '2023-06-03', '14:00:00', 'https://example.com/url-portada9.jpg', 'Aventuras al aire libre en hermosos paisajes naturales.', 1, 24),
    ('Entretención para niños', 'Laura Martínez', '2023-06-04', '10:00:00', 'https://example.com/url-portada10.jpg', 'Actividades divertidas y educativas para los más pequeños.', 3, 24);

INSERT INTO episodios (idEpisodio, urlPortada, titulo, urlEpisodio, idPrograma)
VALUES
    (1, 'https://example.com/portada_episodio1.jpg', 'El inicio de los misterios', 'https://example.com/episodio1.mp4', 1),
    (2, 'https://example.com/portada_episodio2.jpg', 'Secretos en la oscuridad', 'https://example.com/episodio2.mp4', 1),
    (3, 'https://example.com/portada_episodio3.jpg', 'El enigma del pueblo abandonado', 'https://example.com/episodio3.mp4', 1),
    (4, 'https://example.com/portada_episodio4.jpg', 'El comienzo de una guerra', 'https://example.com/episodio4.mp4', 2),
    (5, 'https://example.com/portada_episodio5.jpg', 'Intrigas en la corte', 'https://example.com/episodio5.mp4', 2),
    (6, 'https://example.com/portada_episodio6.jpg', 'Batallas épicas', 'https://example.com/episodio6.mp4', 2),
    (7, 'https://example.com/portada_episodio7.jpg', 'El destino del reino', 'https://example.com/episodio7.mp4', 2),
    (8, 'https://example.com/portada_episodio8.jpg', 'El inicio del imperio', 'https://example.com/episodio8.mp4', 3),
    (9, 'https://example.com/portada_episodio9.jpg', 'Enfrentando a los rivales', 'https://example.com/episodio9.mp4', 3),
    (10, 'https://example.com/portada_episodio10.jpg', 'El comienzo de un reinado', 'https://example.com/episodio10.mp4', 4),
    (11, 'https://example.com/portada_episodio11.jpg', 'Crisis en el palacio', 'https://example.com/episodio11.mp4', 4),
    (12, 'https://example.com/portada_episodio12.jpg', 'La caída de una monarca', 'https://example.com/episodio12.mp4', 4),
    (13, 'https://example.com/portada_episodio13.jpg', 'El legado de una monarca', 'https://example.com/episodio13.mp4', 4),
    (14, 'https://example.com/portada_episodio14.jpg', 'El regreso del Upside Down', 'https://example.com/episodio14.mp4', 5),
    (15, 'https://example.com/portada_episodio15.jpg', 'Misterios en Hawkins', 'https://example.com/episodio15.mp4', 5),
    (16, 'https://example.com/portada_episodio16.jpg', 'La batalla final', 'https://example.com/episodio16.mp4', 5);

INSERT INTO programaciones (diaProgramación, horaProgramación)
VALUES
    ('Lunes', '09:00:00'),
    ('Martes', '18:45:00'),
    ('Miércoles', '11:30:00'),
    ('Jueves', '15:15:00'),
    ('Viernes', '07:00:00'),
    ('Sábado', '20:00:00'),
    ('Domingo', '21:30:00'),
    ('Lunes', '08:30:00'),
    ('Martes', '14:00:00'),
    ('Miércoles', '10:00:00'),
    ('Lunes', '08:00:00'),
    ('Martes', '13:30:00'),
    ('Miércoles', '20:15:00'),
    ('Jueves', '10:45:00'),
    ('Viernes', '18:30:00'),
    ('Sábado', '15:00:00'),
    ('Domingo', '21:45:00'),
    ('Lunes', '12:00:00'),
    ('Martes', '19:30:00'),
    ('Miércoles', '09:15:00'),
    ('Jueves', '16:45:00'),
    ('Viernes', '23:00:00'),
    ('Sábado', '14:30:00'),
    ('Domingo', '20:45:00'),
    ('Lunes', '11:30:00'),
    ('Martes', '18:15:00'),
    ('Miércoles', '14:00:00'),
    ('Jueves', '19:30:00'),
    ('Viernes', '21:15:00'),
    ('Sábado', '10:45:00'),
    ('Domingo', '17:30:00'),
    ('Lunes', '13:00:00'),
    ('Martes', '20:30:00'),
    ('Miércoles', '09:45:00'),
    ('Jueves', '16:15:00'),
    ('Viernes', '22:30:00'),
    ('Sábado', '15:45:00'),
    ('Domingo', '19:00:00'),
    ('Lunes', '12:30:00'),
    ('Martes', '18:00:00'),
    ('Miércoles', '11:15:00'),
    ('Jueves', '17:45:00'),
    ('Viernes', '23:30:00'),
    ('Sábado', '14:00:00'),
    ('Domingo', '20:15:00'),
    ('Lunes', '11:45:00'),
    ('Martes', '19:15:00'),
    ('Miércoles', '13:30:00'),
    ('Jueves', '20:00:00'),
    ('Viernes', '22:45:00'),
    ('Sábado', '11:15:00'),
    ('Domingo', '18:00:00'),
    ('Lunes', '13:30:00'),
    ('Martes', '20:00:00'),
    ('Miércoles', '09:30:00'),
    ('Jueves', '16:00:00'),
    ('Viernes', '23:45:00'),
    ('Sábado', '15:15:00'),
    ('Domingo', '21:30:00'),
    ('Lunes', '12:45:00'),
    ('Martes', '18:30:00'),
    ('Miércoles', '11:45:00'),
    ('Jueves', '17:15:00'),
    ('Viernes', '21:45:00'),
    ('Sábado', '10:15:00'),
    ('Domingo', '16:30:00'),
    ('Lunes', '13:45:00'),
    ('Martes', '20:15:00'),
    ('Miércoles', '14:30:00'),
    ('Jueves', '19:00:00'),
    ('Viernes', '22:45:00'),
    ('Sábado', '11:30:00'),
    ('Domingo', '17:45:00'),
    ('Lunes', '12:45:00'),
    ('Martes', '18:30:00'),
    ('Miércoles', '11:45:00'),
    ('Jueves', '17:15:00'),
    ('Viernes', '21:45:00');
	
INSERT INTO alAire (trasmisión, idProgamación, idAudiovisual)
VALUES
    ('En vivo', 18, 4),
    ('En vivo', 10, 1),
    ('En vivo', 25, 11),
    ('En vivo', 8, 7),
    ('Grabado', 29, 13),
    ('Grabado', 33, 14),
    ('Grabado', 31, 11),
    ('Grabado', 17, 9),
    ('En vivo', 27, 8),
    ('En vivo', 19, 2),
    ('En vivo', 15, 10),
    ('En vivo', 23, 12),
    ('En vivo', 12, 3),
    ('En vivo', 26, 6),
    ('Grabado', 14, 5),
    ('Grabado', 22, 10),
    ('En vivo', 11, 4),
    ('Grabado', 21, 13),
    ('En vivo', 16, 9),
    ('Grabado', 20, 7),
    ('En vivo', 28, 1),
    ('Grabado', 24, 6),
    ('En vivo', 32, 2),
    ('Grabado', 30, 12),
    ('Grabado', 13, 3),
    ('Grabado', 9, 8),
    ('Grabado', 34, 15),
    ('En vivo', 35, 5),
    ('Grabado', 36, 14),
    ('En vivo', 37, 11);

INSERT INTO videos (idvideo, urlVideo, fechaPublicación)
VALUES (1, 'https://example.com/stranger-things-video.mp4', '2022-01-01'),
       (2, 'https://example.com/game-of-thrones-video.mp4', '2022-02-02'),
       (3, 'https://example.com/breaking-bad-video.mp4', '2022-03-03'),
       (4, 'https://example.com/the-crown-video.mp4', '2022-04-04'),
       (5, 'https://example.com/friends-video.mp4', '2022-05-05'),
       (6, 'https://example.com/the-office-video.mp4', '2022-06-06');
	
INSERT INTO videosProgramas (idVideoPrograma, autor, descripción,idPrograma)
VALUES (1,'Martin Cabello','Es genial',1),
		(2,'carla Mora','historia de la lucha por un trono, el trono de hierro, forjado con las espadas de los enemigos vencidos.',2),
		(3,'El Presidente','maxima autoridad',3);

INSERT INTO videosNormales (idVideoNormal, autor, descripción)
VALUES 
	(4,'Lola Caval','Inpresionante video'),
	(5, 'Juan Pérez', 'Recorrido por la ciudad'),
    (6, 'María González', 'Tutorial de cocina');


INSERT INTO plataformas (nombre)
VALUES 
		('Internet'),
		('TV');
		
INSERT INTO tiposSeñales (nombre)
VALUES 
		('Análoga'),('TDT'),('Cable'); 

INSERT INTO TiposFallas (nombre)
VALUES ('Cortes/Intermitencias'),
		('Solo hay video'),
		('Solo escucho audio'),
		('Audio o video retrasado'),
		('no hay señal'),
		('lluvia'),
		('Hay otros canal'),
		('Otros');

INSERT INTO tiposAntenas (nombre, idtiposSeñales, idTipoFalla)
VALUES
    ('Antena En Techo', 1, 1),
    ('Antena Sobre TV', 1, 2),
	('Antena En Techo', 2, 1),
    ('Antena Sobre TV', 2, 2),
    ('claro', 3, 1),
    ('directv', 3, 1),
    ('ETB', 3, 1),
    ('movistar', 3, 1),
    ('super cable', 3, 5),
    ('tigo', 3, 1),
    ('UNE', 3, 3),
    ('claro', 3, 4),
    ('directv', 3, 6),
    ('ETB', 3, 1),
    ('movistar', 3, 2),
    ('super cable', 3, 2),
    ('tigo', 3, 1),
    ('UNE', 3, 1);



INSERT INTO Departamentos (nombre)
VALUES ('Atlántico'), ('Bolívar'), ('Cesar'), ('Córdoba'), ('La Guajira'), 
('Magdalena'), ('San Andrés y Providencia'), ('Sucre'),
('Cundinamarca'), ('Antioquia'); 

INSERT INTO Municipios (nombre, dirección, idDepartamento)
VALUES
    ('Barranquilla', ' Calle 45 # 123 - Barrio Modelo ', 1),
    ('Cartagena', 'Carrera 10 # 987 - Barrio Histórico', 2),
    ('Valledupar', 'Avenida Simón Bolívar # 456 - Barrio Centro', 3),
    ('Montería', 'Calle 20 # 789 - Barrio La Granja', 4),
    ('Riohacha', 'Carrera 30 # 321 - Barrio Los Almendros', 5),
    ('Santa Marta', 'Calle 35 # 654 - Barrio El Rodadero', 6),
    ('San Andrés', 'Avenida Colombia # 876 - Barrio Sarie Bay', 7),
    ('Sincelejo', ' Carrera 15 # 543 - Barrio El Carmen', 8),
    ('Barranquilla', 'Calle 1 #123', 1),
    ('Barranquilla', 'Avenida 2 #456', 1),
    ('Barranquilla', 'Carrera 3 #789', 1),
    ('Barranquilla', 'Calle 4 #321', 1),
    ('Barranquilla', 'Avenida 5 #654', 1),
    ('Barranquilla', 'Carrera 6 #876', 1),
    ('Barranquilla', 'Calle 7 #543', 1),
    ('Barranquilla', 'Avenida 8 #987', 1),
    ('Cartagena', 'Calle 10 #111', 2),
    ('Valledupar', 'Avenida 20 #222', 3),
    ('Montería', 'Carrera 30 #333', 4),
    ('Riohacha', 'Calle 40 #444', 5),
    ('Santa Marta', 'Avenida 50 #555', 6),
    ('San Andrés', 'Carrera 60 #666', 7),
    ('Sincelejo', 'Calle 70 #777', 8),
    ('Maicao', 'Avenida 80 #888', 5),
    ('Malambo', 'Carrera 90 #999', 1),
    ('Soledad', 'Calle 100 #1010', 1),
    ('Sabanalarga', 'Avenida 110 #1111', 1),
    ('Ciénaga', 'Carrera 120 #1212', 6),
    ('Puerto Colombia', 'Calle 130 #1313', 1),
    ('Ponedera', 'Avenida 140 #1414', 1),
    ('Galapa', 'Carrera 150 #1515', 1),
    ('Baranoa', 'Calle 160 #1616', 1),
    ('Santa Marta', 'Calle 10 #111', 6),
    ('Ciénaga', 'Avenida 20 #222',6),
    ('Fundación', 'Carrera 30 #333', 6),
    ('El Banco', 'Calle 40 #444', 6),
    ('Aracataca', 'Avenida 50 #555', 6),
    ('Pueblo Viejo', 'Carrera 60 #666', 6),
    ('Plato', 'Calle 70 #777', 6),
    ('Zona Bananera', 'Avenida 80 #888', 6),
    ('Remolino', 'Carrera 90 #999', 6),
    ('El Piñón', 'Calle 100 #1010', 6),
    ('Algarrobo', 'Avenida 110 #1111', 6),
    ('Sitionuevo', 'Carrera 120 #1212', 6),
    ('Pivijay', 'Calle 130 #1313', 6),
    ('Chibolo', 'Avenida 140 #1414', 6),
    ('San Zenón', 'Carrera 150 #1515', 6),
    ('Valledupar', 'Calle 10 #111', 3),
    ('Aguachica', 'Avenida 20 #222', 3),
    ('Agustín Codazzi', 'Carrera 30 #333', 3),
    ('Bosconia', 'Calle 40 #444', 3),
    ('La Jagua de Ibirico', 'Avenida 50 #555', 3),
    ('San Alberto', 'Carrera 60 #666', 3),
    ('Curumaní', 'Calle 70 #777', 3),
    ('Becerril', 'Avenida 80 #888', 3),
    ('Pelaya', 'Carrera 90 #999', 3),
    ('Pailitas', 'Calle 100 #1010', 3),
    ('San Diego', 'Avenida 110 #1111', 3),
    ('Astrea', 'Carrera 120 #1212', 3),
    ('Chimichagua', 'Calle 130 #1313', 3),
    ('Manaure Balcón del Cesar', 'Avenida 140 #1414', 3),
    ('La Paz', 'Carrera 150 #1515', 3),
    ('Bogotá', 'Calle 10 #111', 9),
    ('Soacha', 'Avenida 20 #222', 9),
    ('Zipaquirá', 'Carrera 30 #333', 9),
    ('Facatativá', 'Calle 40 #444', 9),
    ('Chía', 'Avenida 50 #555', 9),
    ('Funza', 'Carrera 60 #666', 9),
    ('Girardot', 'Calle 70 #777', 9),
    ('Cajicá', 'Avenida 80 #888', 9),
    ('Mosocho', 'Carrera 90 #999', 9),
    ('Tabio', 'Calle 100 #1010', 9),
    ('Tenjo', 'Avenida 110 #1111', 9),
    ('Sopó', 'Carrera 120 #1212', 9),
    ('Tocancipá', 'Calle 130 #1313', 9),
    ('La Mesa', 'Avenida 140 #1414', 9),
    ('Villeta', 'Carrera 150 #1515', 9),
	('Medellín', 'Calle 10 #111', 10),
    ('Bello', 'Avenida 20 #222', 10),
    ('Itagüí', 'Carrera 30 #333', 10),
    ('Envigado', 'Calle 40 #444', 10),
    ('Sabaneta', 'Avenida 50 #555', 10),
    ('Rionegro', 'Carrera 60 #666', 10),
    ('Turbo', 'Calle 70 #777',10),
    ('Caucasia', 'Avenida 80 #888', 10),
    ('Apartadó', 'Carrera 90 #999', 10),
    ('Ituango', 'Calle 100 #1010', 10),
    ('Caldas', 'Avenida 110 #1111', 10),
    ('Carmen de Viboral', 'Carrera 120 #1212', 10),
    ('La Ceja', 'Calle 130 #1313', 10),
    ('San Jerónimo', 'Avenida 140 #1414', 10),
    ('Girardota', 'Carrera 150 #1515', 10);
INSERT INTO personas (nombre, apellido, documentoIdentidad, teléfono, aceptoInformación, email)
VALUES
	('Yeimer','Campo','98081375429','3106832022',true,'yeimercampo25@gmail.com'),
	('jesus','Arias','36596590','3156789099',true,'jesusarias33@hotmail.com'),
	('camila','cabello','456783456','3006755500',false,'camilacabello44@gmailcom'),
    ('Carlos', 'Gómez', '123456789', '3112345678', true, 'carlosgomez@example.com'),
    ('Laura', 'Hernández', '987654321', '3223456789', true, 'laurahernandez@example.com'),
    ('Andrés', 'Vargas', '456789123', '3014567890', false, 'andresvargas@example.com'),
    ('María', 'López', '321654987', '3005678901', true, 'marialopez@example.com'),
    ('Juan', 'Ramírez', '789123456', '3016789012', false, 'juanramirez@example.com'),
    ('Ana', 'Martínez', '654987321', '3007890123', true, 'anamartinez@example.com'),
    ('Pedro', 'González', '147258369', '3128901234', true, 'pedrogonzalez@example.com'),
    ('Carolina', 'Silva', '852963741', '3109012345', false, 'carolinasilva@example.com'),
    ('Luis', 'Pérez', '369258147', '110123456', true, 'luisperez@example.com'),
    ('Mariana', 'García', '963147852', '3121234567', true, 'marianagarcia@example.com'),
    ('Sergio', 'Rodríguez', '258369147', '3152345678', false, 'sergiorodriguez@example.com'),
    ('Valentina', 'Torres', '741852963', '3163456789', true, 'valentinatorres@example.com'),
    ('José', 'Herrera', '369147258', '3174567890', true, 'joseherrera@example.com'),
    ('Fernanda', 'Ortega', '852963741', '3185678901', false, 'fernandaortega@example.com'),
    ('Diego', 'Giraldo', '147852369', '3246789012', true, 'diegogiraldo@example.com'),
    ('Paula', 'Cruz', '963741852', '3007890123', false, 'paulacruz@example.com'),
    ('Daniel', 'Moreno', '258147369', '3018901234', true, 'danielmoreno@example.com'),
    ('Valeria', 'Sánchez', '741963852', '3119012345', true, 'valeriasanchez@example.com'),
    ('Andrea', 'Rojas', '369147852', '3000123456', false, 'andrearojas@example.com'),
    ('Javier', 'Guzmán', '963258741', '3001234567', true, 'javierguzman@example.com'),
    ('Paola', 'Lara', '123789456', '3112345678', true, 'paolalara@example.com'),
    ('Alejandro', 'Mendoza', '456123789', '3223456789', false, 'alejandromendoza@example.com'),
    ('Diana', 'Gutierrez', '789456123', '3154567890', true, 'dianagutierrez@example.com'),
    ('Gabriel', 'Soto', '123654789', '3165678901', false, 'gabrielsoto@example.com'),
    ('Natalia', 'Pardo', '456789321', '3146789012', true, 'nataliapardo@example.com'),
    ('Roberto', 'Ospina', '789321654', '3147890123', true, 'robertoospina@example.com'),
    ('Mónica', 'Vega', '321654789', '3178901234', false, 'monicavega@example.com'),
    ('Hugo', 'Ramos', '789654321', '3189012345', true, 'hugoramos@example.com'),
    ('Isabella', 'Castaño', '321789654', '3141234586', true, 'isabellacastano@example.com');


INSERT INTO reportesFallas (fecha, hora, descripción, idAdiovisual, idDepartamento, idPersona, idPlataforma, idTipoSeñal)
VALUES
    ('2023-05-25', '13:30:00', 'Problema de señal', 1, 1, 1, 1, NULL),
    ('2023-05-25', '15:45:00', 'Corte de audio', 2, 2, 2, 2, 1),
    ('2023-05-23', '10:15:00', 'Canales incorrectos', 3, 1, 2, 1, 3),
    ('2023-05-23', '12:30:00', 'Sin señal', 4, 3, 4, 2, 2),
    ('2022-05-24', '14:45:00', 'Problema de video', 5, 4, 5, 2, 2),
    ('2021-05-26', '16:30:00', 'Interferencia', 6, 2, 6, 1, NULL),
    ('2023-05-01', '10:30:00', 'No hay señal en el televisor', 1, 1, 1, 1, NULL),
    ('2023-05-02', '15:45:00', 'El audio se escucha distorsionado', 2, 2, 2, 1, NULL),
    ('2023-05-03', '08:20:00', 'La imagen se congela constantemente', 3, 3, 3, 1, NULL),
    ('2023-05-04', '14:10:00', 'La señal de internet se cae intermitentemente', 4, 4, 4, 1, NULL),
    ('2023-05-05', '09:55:00', 'No se pueden sintonizar algunos canales', 5, 5, 5, 1, NULL),
    ('2023-05-06', '11:40:00', 'La imagen se ve pixelada', 6, 6, 6, 2, 2),
    ('2023-05-07', '17:15:00', 'No hay acceso a internet', 7, 7, 7, 2, 3),
    ('2023-05-08', '13:30:00', 'El audio está desincronizado con el video', 8, 8, 8, 2, 1),
    ('2023-05-09', '16:25:00', 'El televisor muestra una pantalla en negro', 9, 9, 9, 2, 1),
    ('2023-05-10', '12:15:00', 'La señal de TV se corta constantemente', 10, 10, 10, 2, 1),
    ('2023-05-11', '10:30:00', 'No hay señal en el televisor', 1, 1, 11, 1, 3),
    ('2023-05-12', '15:45:00', 'El audio se escucha distorsionado', 2, 2, 12, 1, NULL),
    ('2023-05-13', '08:20:00', 'La imagen se congela constantemente', 3, 3, 13, 1, NULL),
    ('2023-05-14', '14:10:00', 'La señal de internet se cae intermitentemente', 4, 4, 14, 1, NULL),
    ('2023-05-15', '09:55:00', 'No se pueden sintonizar algunos canales', 5, 5, 15, 1,NULL),
    ('2023-05-16', '11:40:00', 'La imagen se ve pixelada', 6, 6, 16, 2, 3),
    ('2023-05-17', '17:15:00', 'No hay acceso a internet', 7, 7, 17, 2, 2),
    ('2023-05-18', '13:30:00', 'El audio está desincronizado con el video', 8, 8, 18, 2, 1),
    ('2023-05-19', '16:25:00', 'El televisor muestra una pantalla en negro', 9, 9, 19, 2, 3),
    ('2023-05-20', '12:15:00', 'La señal de TV se corta constantemente', 10, 10, 20, 2, 3),
    ('2023-05-21', '10:30:00', 'No hay señal en el televisor', 1, 1, 21, 1,NULL),
    ('2023-05-22', '15:45:00', 'El audio se escucha distorsionado', 2, 2, 22, 1, NULL),
    ('2023-05-23', '08:20:00', 'La imagen se congela constantemente', 3, 3, 23, 1, NULL),
    ('2023-05-24', '14:10:00', 'La señal de internet se cae intermitentemente', 4, 4, 24, 1, NULL),
    ('2023-05-25', '09:55:00', 'No se pueden sintonizar algunos canales', 5, 5, 25, 1, NULL),
    ('2023-05-26', '11:40:00', 'La imagen se ve pixelada', 6, 6, 26, 2, 1),
    ('2023-05-27', '17:15:00', 'No hay acceso a internet', 7, 7, 27, 2, 2),
    ('2023-05-28', '13:30:00', 'El audio está desincronizado con el video', 8, 8, 28, 2, 3),
    ('2023-05-29', '16:25:00', 'El televisor muestra una pantalla en negro', 9, 9, 29, 2, 2),
    ('2023-05-30', '12:15:00', 'La señal de TV se corta constantemente', 10, 10, 30, 2, 1);



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