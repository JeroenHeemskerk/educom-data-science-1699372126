SELECT c.name, IFNULL(com.name, "INVALID")
FROM mhl_cities AS c
INNER JOIN mhl_communes AS com
ON c.commune_ID = com.id