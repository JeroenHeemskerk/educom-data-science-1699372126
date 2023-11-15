SELECT 
h.year,
COUNT(*) AS number_of_records,
MIN(hitcount) AS minimum_hitcount,
MAX(hitcount) AS maximum_hitcount,
AVG(hitcount) AS average_hitcount,
SUM(hitcount) AS total_hitcount
FROM mhl_hitcount as h
GROUP BY year;
