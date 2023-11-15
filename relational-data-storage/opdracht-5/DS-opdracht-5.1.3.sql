SELECT
h.year, h.month,
COUNT(*),
MIN(h.hitcount),
MAX(h.hitcount),
AVG(h.hitcount),
SUM(h.hitcount)
FROM mhl_hitcount AS h
GROUP BY h.year, h.month;