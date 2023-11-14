SELECT c1.name AS plaatsnaam, c1.id AS c1_stadID, c2.id AS c2_stadID, com1.id AS gemeente1_ID, com2.id AS gemeente2_ID, com1.name AS gemeente1, com2.name AS gemeente2
FROM mhl_cities AS c1
INNER JOIN mhl_cities AS c2
ON c1.name = c2.name AND c1.id > c2.id
INNER JOIN mhl_communes AS com1
ON c1.commune_ID = com1.id
INNER JOIN mhl_communes AS com2 
ON com1.name = com2.name
WHERE com1.name IS NOT NULL AND com2.name IS NOT NULL 
ORDER BY c1.name;

-- // deze nog aanpassen - klopt niet
