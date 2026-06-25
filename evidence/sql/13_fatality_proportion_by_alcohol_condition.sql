SELECT 
    alientoalcoholico, 
    COUNT(*) AS total_accidentes, 
    COUNT(*) FILTER (WHERE clasificacion = 'fatal') AS accidentes_fatales,
    (COUNT(*) FILTER (WHERE clasificacion = 'fatal')::DECIMAL / COUNT(*)) AS proporcion
FROM atus.accidentes
WHERE alientoalcoholico <> 'certificado cero'
GROUP BY alientoalcoholico
ORDER BY proporcion DESC;