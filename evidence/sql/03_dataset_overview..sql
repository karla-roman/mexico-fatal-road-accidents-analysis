SELECT
	COUNT(*) AS totalFilas,
	MAX(anio) AS anioMayor,
	MIN(anio) AS anioMenor
FROM atus.accidentes;