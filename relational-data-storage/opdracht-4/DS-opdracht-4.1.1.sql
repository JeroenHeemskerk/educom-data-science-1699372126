SELECT s.name, s.huisnr, s.postcode, c.name
FROM mhl_suppliers AS s
INNER JOIN mhl_cities AS c 
ON s.city_ID = c.id
WHERE c.name LIKE "amsterdam%";

