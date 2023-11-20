SET lc_time_names = 'nl_NL';
SELECT YEAR(s.joindate) AS jaar, 
MONTHNAME(s.joindate) AS maand, 
COUNT(ID) AS aantal
FROM mhl_suppliers AS s
GROUP BY jaar, maand
ORDER BY jaar, MONTH(s.joindate)
