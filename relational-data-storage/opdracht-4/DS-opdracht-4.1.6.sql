SELECT h.hitcount, s.name, c.name AS stad, com.name AS gemeente, d.name as provincie
FROM mhl_suppliers AS s
INNER JOIN mhl_hitcount AS h
ON s.id = h.supplier_ID
INNER JOIN mhl_cities as c
ON s.city_ID = c.id
INNER JOIN mhl_communes as com
ON com.id = c.commune_ID
INNER JOIN mhl_districts as d
ON d.id = com.district_ID 
WHERE h.year = 2014 AND h.month = 1 AND (d.name= "Zeeland" OR d.name="Noord-Brabant" OR d.name= "Limburg");

