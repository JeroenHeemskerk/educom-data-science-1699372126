SELECT c1.name AS c1_plaatsnaam, c2.name AS c2_plaatsnaam, c1.id AS c1_stadID, c2.id AS c2_stadID, c1.commune_ID AS c1_gemeenteID, c2.commune_ID AS c2_gemeenteID
FROM mhl_cities AS c1
INNER JOIN mhl_cities AS c2
ON c1.name = c2.name AND c1.id > c2.id
ORDER BY c1.name;

