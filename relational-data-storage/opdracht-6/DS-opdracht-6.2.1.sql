SELECT DATE_FORMAT((s.joindate), GET_FORMAT(DATE, 'EUR')) AS joindate, s.id AS ID
FROM mhl_suppliers AS s
WHERE EXTRACT(DAY FROM s.joindate) >= (EXTRACT(DAY FROM LAST_DAY(s.joindate)) - 7)

--de LASTDAY functie geeft de laatste dag van de maand (die je als input geeft, in dit geval de joindate van suppliers)
