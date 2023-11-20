SELECT s.id AS ID, s.joindate AS joindate, DATEDIFF(CURDATE(),s.joindate) AS dagen_lid
FROM mhl_suppliers AS s
ORDER BY dagen_lid ASC


-- geeft het verschil tussen joindate en huidige date in dagen
