-- victims, zombies who bit them, date infected all in one table

SELECT victims.name AS victim_name, zombies.name, bitings.infected_on FROM victims
INNER JOIN bitings
ON victims.id = bitings.victim_id
INNER JOIN zombies
ON bitings.zombie_id = zombies.id;
