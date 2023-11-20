SELECT c.name AS name, 
    CASE
        WHEN name LIKE "\'%"
        THEN CONCAT(LOWER(SUBSTRING(name, 1, 3)), UPPER(SUBSTRING(name, 4, 1)), SUBSTRING(name, 5))
        ELSE CONCAT(UPPER(SUBSTRING(name, 1, 1)), SUBSTRING(name, 2))
    END AS nice_name
FROM mhl_cities AS c
ORDER BY name

--SUBSTRING(string, start(index), length(of extraction))
-- '/'%' -> apostrof + anything (wildcard)

