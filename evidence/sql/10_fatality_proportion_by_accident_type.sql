SELECT 
    tipoaccidente, 
    COUNT(*) AS total_accidentes, 
    COUNT(*) FILTER (WHERE clasificacion = 'fatal') AS accidentes_fatales,
    (COUNT(*) FILTER (WHERE clasificacion = 'fatal')::DECIMAL / COUNT(*)) AS proporcion
FROM atus.accidentes
WHERE tipoaccidente <> 'certificado cero'
GROUP BY tipoaccidente
ORDER BY proporcion DESC;