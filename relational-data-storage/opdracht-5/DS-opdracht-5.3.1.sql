CREATE VIEW DIRECTIE (supplier_ID, contact, functie, department) AS
SELECT c.supplier_ID, c.name, c.contacttype, d.name
FROM mhl_contacts as c
LEFT JOIN mhl_departments AS d
ON d.id = c.department 
WHERE IF(d.name="Directie", TRUE, c.contacttype LIKE '%directeur%')