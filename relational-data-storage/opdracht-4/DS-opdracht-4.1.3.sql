SELECT s.name, s.straat, s.huisnr, s.postcode, c.name, r.name
FROM mhl_suppliers AS s
INNER JOIN mhl_cities AS c 
ON s.city_ID = c.id
INNER JOIN mhl_suppliers_mhl_rubriek_view AS pivot
ON s.id = pivot.mhl_suppliers_ID
INNER JOIN mhl_rubrieken as r 
ON pivot.mhl_rubriek_view_ID = r.id
WHERE c.name LIKE "Amsterdam%" AND (r.id = 235 OR r.parent = 235)
ORDER BY r.name ASC, s.name ASC;

