SELECT 
    dia, 
    COUNT(*) AS total_accidentes, 
    COUNT(*) FILTER (WHERE clasificacion = 'fatal') AS accidentes_fatales,
    (COUNT(*) FILTER (WHERE clasificacion = 'fatal')::DECIMAL / COUNT(*)) AS proporcion
FROM atus.accidentes
WHERE dia <> 'certificado cero'
GROUP BY dia
ORDER BY proporcion DESC;