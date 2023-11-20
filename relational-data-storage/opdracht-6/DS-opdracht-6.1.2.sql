SELECT com.name
FROM mhl_communes AS com


Selecteer alle NEDERLANDSE gemeentes

country_id = 151
of mhl_countries.name = "Nederland"

mhl_districts.country_ID = 151




SELECT gemeente, leverancier, total_hitcount, average_hitcount

FROM (
    SELECT com.id, s.name, 

    FROM mhl_suppliers AS s
    JOIN mhl_cities AS c ON
    s.city_ID = c.id
    JOIN mhl_communes AS com
    ON com.id = c.commune_ID
    JOIN mhl_districts AS d
    ON d.id = com.district_ID
    JOIN mhl_countries AS country
    ON country.id = d.country_ID
    
    WHERE d.country_ID = (
        SELECT id
        FROM mhl_countries AS country
        WHERE country.name = "Nederland")

    mhl_hitcount
)




SELECT a.gemeente, b.leverancier, b.total_hitcount, a.average_hitcount
FROM (

    SELECT g.id, l.name AS leverancier, SUM(h.hitcount) AS total_hitcount
  FROM mhl_suppliers l
  INNER JOIN mhl_cities p ON l.city_ID=p.id
  INNER JOIN mhl_communes g ON p.commune_ID=g.id
  INNER JOIN mhl_districts d ON g.district_ID=d.id

  INNER JOIN mhl_hitcount h ON h.supplier_ID=l.id
  WHERE d.country_ID= (
        SELECT id
        FROM mhl_countries
        WHERE name='Nederland')


        GROUP BY g.id, l.name 
    ) AS b


INNER JOIN (
    SELECT g.id, AVG(h.hitcount) AS average_hitcount, g.name AS gemeente
    FROM mhl_hitcount h
    INNER JOIN mhl_suppliers l ON h.supplier_ID=l.id
    INNER JOIN mhl_cities p ON l.city_ID=p.id
    INNER JOIN mhl_communes g ON p.commune_ID=g.id
    INNER JOIN mhl_districts d ON g.district_ID=d.id
    WHERE d.country_ID = (
        SELECT id
        FROM mhl_countries
        WHERE name='Nederland'
    ) 
    GROUP BY g.id
    ) AS a ON a.id=b.id
GROUP BY a.id, b.leverancier
HAVING b.total_hitcount > a.average_hitcount
ORDER BY a.gemeente, (b.total_hitcount-a.average_hitcount) DESC