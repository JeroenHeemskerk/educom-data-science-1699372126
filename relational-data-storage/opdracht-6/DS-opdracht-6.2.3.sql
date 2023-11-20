SET lc_time_names = 'nl_NL';
-- taal is Nederlands als het over tijd gaat
SELECT  DAYNAME(s.joindate) AS 'Dag van de week', 
COUNT(ID) AS 'Aantal aanmeldingen'
FROM mhl_suppliers AS s
GROUP BY 'Dag van de week', DAYOFWEEK(s.joindate)


-- WEEKDAY(s.joindate)
-- DATEPART(dw, s.joindate)
-- zaterdag = 7
-- zondag = 1

