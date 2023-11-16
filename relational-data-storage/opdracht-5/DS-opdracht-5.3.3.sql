SELECT 
s.name, 
IFNULL(d.contact, 'tav de directie') AS 'contact',
v.adres,
v.postcode,
v.stad
FROM mhl_suppliers AS s
JOIN verzendlijst AS v
ON s.id = v.id
LEFT JOIN directie AS d
ON s.id = d.supplier_ID

