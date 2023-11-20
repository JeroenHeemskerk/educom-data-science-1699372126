SELECT 
c1.name AS plaatsnaam, 
c1.id AS 'stad ID 1', 
c2.id AS 'stad ID 2', 
c1.commune_ID AS 'gemeente ID 1', 
c2.commune_ID AS 'gemeente ID 2', 
com1.name AS 'gemeente naam 1', 
com2.name AS 'gemeente naam 2'
FROM mhl_cities AS c1
INNER JOIN mhl_cities AS c2
ON c1.name = c2.name AND c1.id < c2.id
INNER JOIN mhl_communes AS com1
ON c1.commune_ID = com1.id
INNER JOIN mhl_communes AS com2 
ON c2.commune_ID = com2.id
WHERE com1.name IS NOT NULL AND com2.name IS NOT NULL 
ORDER BY c1.name;
