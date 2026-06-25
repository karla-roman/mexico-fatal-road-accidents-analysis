SELECT 
    hora, 
    COUNT(*) AS total_accidentes, 
    COUNT(*) FILTER (WHERE clasificacion = 'fatal') AS accidentes_fatales,
    (COUNT(*) FILTER (WHERE clasificacion = 'fatal')::DECIMAL / COUNT(*)) AS proporcion
FROM atus.accidentes
GROUP BY hora
ORDER BY proporcion DESC;