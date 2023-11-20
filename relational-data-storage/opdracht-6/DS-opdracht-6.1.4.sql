
CREATE OR REPLACE VIEW rubrieken AS
    SELECT
        rc.id as id,
        IF(ISNULL(rp.name), rc.name, CONCAT(rp.name, ' - ', rc.name)) AS rubriek
        -- als rp = NULL, dan is het een hoofdrubriek. Dus, als TRUE, dan hoofdrubriek
    FROM mhl_rubrieken rp
    RIGHT OUTER JOIN mhl_rubrieken rc ON rc.parent = rp.id
    ORDER BY Rubriek
    
--------------------------------------------------------------

SELECT
    r.rubriek,
    IFNULL(SUM(hit.hitcount), "Geen hits") as total
FROM rubrieken AS r
LEFT OUTER JOIN mhl_suppliers_mhl_rubriek_view as pivot 
ON r.id = pivot.mhl_rubriek_view_ID
LEFT JOIN mhl_suppliers AS s
ON s.id = pivot.mhl_suppliers_ID
LEFT OUTER JOIN mhl_hitcount AS hit
ON s.id = hit.supplier_ID
GROUP BY r.rubriek