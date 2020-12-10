-- STEP ONE: Get all the columns from the left table (victims)

-- SELECT victims.* FROM victims;

-- STEP TWO: Bring in the matches from the right table (bitings)
--  given a common key to match on

-- SELECT victims.* FROM victims
-- INNER JOIN bitings
-- ON bitings.victim_id = victims.id;
-- -- STEP THREE: Bring in the NEXT table you want to join on.
-- INNER JOIN zombies
-- ON zombies.id = bitings.zombie_id;


-- STEP FOUR: Select the data from each table you are interested in.

SELECT victims.name, zombies.name, bitings.infected_on FROM victims
INNER JOIN bitings
ON bitings.victim_id = victims.id;
INNER JOIN zombies
ON zombies.id = bitings.zombie_id;