SELECT anio, COUNT(*) AS accidentes
FROM atus.accidentes
WHERE clasificacion = 'fatal'
GROUP BY anio;