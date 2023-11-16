SELECT c.name AS Stad,
COUNT(IF(m.name = 'Gold', 1, NULL)) Gold,
COUNT(IF(m.name = 'Silver', 1, NULL)) Silver,
COUNT(IF(m.name = 'Bronze', 1, NULL)) Bronze,
COUNT(IF(m.name NOT IN ('Gold', 'Silver', 'Bronze'), 1, NULL)) 'Other'
FROM mhl_suppliers AS s
INNER JOIN mhl_membertypes AS m
ON m.id = s.membertype
INNER JOIN mhl_cities AS c
ON c.id = s.city_ID
GROUP BY c.id
ORDER BY Gold DESC, Silver DESC, Bronze DESC, Other DESC; 

