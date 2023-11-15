SELECT s.name AS name,
SUM(h.hitcount) AS total_hitcount,
COUNT(h.month) AS month_count,
ROUND(AVG(h.hitcount),0) AS averge_hitcount
FROM mhl_hitcount AS h
INNER JOIN mhl_suppliers AS s
ON s.id = h.supplier_ID 
GROUP BY name
ORDER BY averge_hitcount DESC;
