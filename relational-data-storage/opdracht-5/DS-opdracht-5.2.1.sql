SELECT 
s.name AS leverancier, 
IF(con.name IS NOT NULL, con.name, 't.a.v. de directie') AS aanhef, 
CASE
	WHEN s.p_address <> '' THEN s.p_address
    ELSE s.straat
END AS adres,
CASE
	WHEN s.p_address <> '' THEN s.p_postcode
    ELSE s.postcode
END AS postcode,
CASE
	WHEN s.p_address <> '' THEN c2.name
    ELSE c.name
END AS stad,
CASE
	WHEN s.p_address <> '' THEN d2.name
    ELSE d.name
END AS provincie
FROM mhl_suppliers AS s
LEFT JOIN mhl_contacts AS con ON s.id = con.supplier_ID AND con.department = 3
LEFT JOIN mhl_cities AS c ON c.id = s.city_ID
LEFT JOIN mhl_communes AS com ON com.id = c.commune_ID
LEFT JOIN mhl_districts AS d ON d.id = com.district_ID
LEFT JOIN mhl_cities AS c2 ON c2.id = s.p_city_ID
LEFT JOIN mhl_communes AS com2 ON com2.id = c2.commune_ID
LEFT JOIN mhl_districts AS d2 ON d2.id = com2.district_ID
WHERE postcode <> ''
ORDER BY provincie, stad, leverancier;
