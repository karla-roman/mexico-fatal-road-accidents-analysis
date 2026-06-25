SELECT
    COUNT(*) - COUNT(identidad) AS identidad_nulos,
    COUNT(*) - COUNT(anio) AS anio_nulos,
    COUNT(*) - COUNT(hora) AS hora_nulos,
    COUNT(*) - COUNT(dia) AS dia_nulos,
    COUNT(*) - COUNT(causa) AS causa_nulos,
    COUNT(*) - COUNT(clasificacion) AS clasificacion_nulos,
    COUNT(*) - COUNT(tipoaccidente) AS tipoaccidente_nulos,
    COUNT(*) - COUNT(alientoalcoholico) AS alientoalcoholico_nulos
FROM atus.accidentes;