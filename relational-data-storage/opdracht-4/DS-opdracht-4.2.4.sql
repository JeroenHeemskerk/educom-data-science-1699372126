SELECT s.name AS suppliers_name, pt.name AS propertytypes_name, IFNULL(ynp.content, "NOT SET") AS value
FROM mhl_suppliers AS s

INNER JOIN mhl_cities AS c
ON s.city_ID = c.id

CROSS JOIN mhl_propertytypes AS pt

LEFT JOIN mhl_yn_properties AS ynp
ON ynp.supplier_ID = s.id

WHERE c.name LIKE "Amsterdam%" AND pt.proptype = "A"

-- //in mySQL gebruik je ipv FULL JOIN -> CROSS JOIN

