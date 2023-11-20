SELECT
s.name AS name,
    REPLACE (
        REPLACE (
            REPLACE (
                REPLACE (
                    REPLACE (
                        REPLACE (
                            REPLACE(s.name, '&eacute;', 'é'),
                            '&ouml;', 'ö'),
                        '&Uuml;', 'Ü'),
                '&euml;', 'ë'),
            '&egrave;', 'è'),
        '&iuml;','ï'),
    '&acirc;', 'â') AS nicename
FROM mhl_suppliers AS s
WHERE s.name REGEXP '&[^\s]*;'
LIMIT 25


-- Dit werkt niet, want hij past nu altijd maar één stukje aan. 
-- CASE    
--     WHEN INSTR( s.name , '&egrave;') THEN REPLACE(s.name,'&egrave;','è')
--     WHEN INSTR( s.name , '&eacute;') THEN REPLACE(s.name,'&eacute;','é') 
--     WHEN INSTR( s.name , '&iuml;') THEN REPLACE(s.name,'&iuml;','ï') 
--     WHEN INSTR( s.name , '&ouml;') THEN REPLACE(s.name,'&ouml;','ö') 
--     WHEN INSTR( s.name , '&uuml;') THEN REPLACE(s.name,'&uuml;','ü') 
--     WHEN INSTR( s.name , '&euml;') THEN REPLACE(s.name,'&euml;','ë') 
--     WHEN INSTR( s.name , '&Uuml;') THEN REPLACE(s.name,'&Uuml;','Ü') 
--     ELSE s.name
-- END AS nicename


-- Werkt ook niet
-- IF (INSTR(s.name , '&egrave;'), REPLACE(s.name,'&egrave;','è'), s.name),
-- IF (INSTR(s.name , '&eacute;'), REPLACE(s.name,'&egrave;','è'), s.name),
-- IF (INSTR(s.name , '&iuml;'), REPLACE(s.name,'&iuml;','ï'), s.name),
-- IF (INSTR(s.name , '&ouml;'), REPLACE(s.name,'&ouml;','ö'), s.name),
-- IF (INSTR(s.name , '&uuml;'), REPLACE(s.name,'&uuml;','ü'), s.name),
-- IF (INSTR(s.name , '&euml;'), REPLACE(s.name,'&euml;','ë'), s.name),
-- IF (INSTR(s.name , '&Uuml;'), REPLACE(s.name,'&Uuml;','Ü'), s.name)