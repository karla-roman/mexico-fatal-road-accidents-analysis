SELECT causa, COUNT(causa) AS frecuencia
FROM atus.accidentes
GROUP BY causa;

SELECT clasificacion, COUNT(clasificacion) AS frecuencia
FROM atus.accidentes
GROUP BY clasificacion;

SELECT tipoaccidente, COUNT(tipoaccidente) AS frecuencia
FROM atus.accidentes
GROUP BY tipoaccidente;

SELECT alientoalcoholico, COUNT(alientoalcoholico) AS frecuencia
FROM atus.accidentes
GROUP BY alientoalcoholico;
