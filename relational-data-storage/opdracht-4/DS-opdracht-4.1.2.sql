-- SELECT s.name, s.straat, s.huisnr, s.postcode, c.name
-- FROM mhl_suppliers AS s
-- INNER JOIN mhl_cities AS c 
-- ON s.city_ID = c.id
-- WHERE c.commune_ID = 394;

SELECT s.name, s.straat, s.huisnr, s.postcode, c.name, com.name
FROM mhl_suppliers AS s
INNER JOIN mhl_cities AS c 
ON s.city_ID = c.id
INNER JOIN mhl_communes AS com
ON c.commune_ID = com.id 
WHERE com.name = "Steenwijkerland";


 

 