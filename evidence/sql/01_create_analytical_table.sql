CREATE TABLE accidentes_mexico AS
SELECT 
	e.idEntidad,
	a.año AS anio,
	a.hora,
	REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(LOWER(a.dia), 'á', 'a'), 'é', 'e'), 'í', 'i'), 'ó', 'o'), 'ú', 'u') AS dia,
	REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(LOWER(a.causa), 'á', 'a'), 'é', 'e'), 'í', 'i'), 'ó', 'o'), 'ú', 'u') AS causa,
	REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(LOWER(a.clasificacion), 'ñ', 'ni'), 'á', 'a'), 'é', 'e'), 'í', 'i'), 'ó', 'o'), 'ú', 'u') AS clasificacion,
	REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(LOWER(a.tipo), 'á', 'a'), 'é', 'e'), 'í', 'i'), 'ó', 'o'), 'ú', 'u') AS tipoAccidente,
	REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(LOWER(a.alientoAlcoholico), 'á', 'a'), 'é', 'e'), 'í', 'i'), 'ó', 'o'), 'ú', 'u') AS alientoAlcoholico
FROM entidades e 
INNER JOIN accidentes a ON e.idEntidad = CAST(SUBSTR(a.idMunicipio, 1, 2) AS INTEGER)
--ORDER BY RANDOM()
--LIMIT 10
;
