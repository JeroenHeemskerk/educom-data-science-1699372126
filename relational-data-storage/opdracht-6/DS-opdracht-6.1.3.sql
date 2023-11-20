
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
    (SELECT COUNT(mhl_suppliers_ID)
     FROM mhl_suppliers_mhl_rubriek_view
     WHERE mhl_rubriek_view_ID = r.id) AS numsup
FROM rubrieken AS r
ORDER BY rubriek