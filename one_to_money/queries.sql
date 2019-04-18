-- INNER JOIN

--SELECT lightsabers.colour FROM lightsabers; -- explicitly naming table

-- all Jedi with lightsaber data in one query - need to use a Join statement

-- SELECT characters.*, lightsabers.* FROM characters
-- INNER JOIN  lightsabers
-- ON characters.id = lightsabers.character_id;

-- SELECT characters.*, lightsabers.hilt_metal, lightsabers.colour FROM characters
-- INNER JOIN  lightsabers
-- ON characters.id = lightsabers.character_id;

-- SELECT characters.name, lightsabers.hilt_metal, lightsabers.colour FROM characters
-- INNER JOIN  lightsabers
-- ON characters.id = lightsabers.character_id;


-- LEFT (OUTER) JOIN (show me every character and where possible their lightsaber)

-- SELECT characters.*, lightsabers.* FROM characters
-- LEFT JOIN lightsabers
-- ON characters.id = lightsabers.character_id;

SELECT characters.*, lightsabers.* FROM characters
LEFT JOIN lightsabers
ON characters.id = lightsabers.character_id
WHERE lightsabers.character_id IS NULL;
