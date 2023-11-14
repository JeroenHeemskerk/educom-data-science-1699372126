SELECT r2.id, IFNULL(r1.name, r2.name) AS hoofdrubriek, IF(ISNULL(r1.name), '', r2.name) AS subrubriek
FROM mhl_rubrieken AS r1
RIGHT OUTER JOIN mhl_rubrieken AS r2
ON r1.id = r2.parent
ORDER BY hoofdrubriek, subrubriek
