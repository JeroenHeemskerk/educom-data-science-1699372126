SELECT s.name, s.straat, s.huisnr, s.postcode, pt.name 
FROM mhl_suppliers AS s
INNER JOIN mhl_yn_properties as ynp
ON ynp.supplier_ID = s.id
INNER JOIN mhl_propertytypes as pt
ON pt.id = ynp.propertytype_ID
WHERE pt.name = "specialistische leverancier" OR pt.name="ook voor particulieren"

