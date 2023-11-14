SELECT c.name, c.commune_ID, com.id
FROM mhl_cities AS c
LEFT JOIN mhl_communes AS com ON c.commune_ID = com.id
WHERE c.commune_ID IS NULL OR com.id IS NULL

UNION

SELECT c.name, c.commune_ID, com.id
FROM mhl_cities AS c
RIGHT JOIN mhl_communes AS com ON c.commune_ID = com.id
WHERE c.commune_ID IS NULL OR com.id IS NULL;

