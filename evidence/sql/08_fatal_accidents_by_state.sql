SELECT e.entidad, COUNT(a.identidad) AS accidentes
FROM atus.accidentes a
INNER JOIN atus.entidades e ON a.identidad = e.identidad
WHERE a.clasificacion = 'fatal'
GROUP BY e.entidad;
