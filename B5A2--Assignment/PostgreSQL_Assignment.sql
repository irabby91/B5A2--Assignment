-- Active: 1774368710689@@127.0.0.1@5432@conservation_db
CREATE Table rangers(
    ranger_id SERIAL PRIMARY KEY UNIQUE,
    name VARCHAR(255) NOT NULL,
    region VARCHAR(50) 
)

CREATE Table species(
    species_id SERIAL PRIMARY KEY UNIQUE,
    common_name VARCHAR(255) NOT NULL,
    scientific_name VARCHAR(255) NOT NULL,
    discovery_date DATE,
    conservation_status VARCHAR(50)
)


CREATE Table sightings(
    sighting_id SERIAL PRIMARY KEY UNIQUE,
    ranger_id INT NOT NULL REFERENCES rangers(ranger_id),
    species_id INT NOT NULL REFERENCES species(species_id),
    sighting_time TIMESTAMP NOT NULL,
    location VARCHAR(255) NOT NULL,
    notes TEXT DEFAULT NULL
)

-- Insert sample data into rangers
INSERT INTO rangers (name , region)
VALUES 
    ('Alice Green', 'Northern Hills'),
    ('Bob White', 'River Delta'),
    ('Bob Johnson', 'Mountain Range'),
    ('Charlie Brown', 'Savannah Plains'),
    ('Diana Prince', 'Coastal Areas')

    Select * from rangers;

-- Insert sample data into species

INSERT INTO species (common_name, scientific_name, discovery_date, conservation_status)
VALUES
('Snow Leopard', 'Panthera uncia', '1775-01-01', 'Vulnerable'),
('Bengal Tiger', 'Panthera tigris tigris', '1758-01-01', 'Endangered'),
('African Elephant', 'Loxodonta africana', '1827-01-01', 'Vulnerable'),
('Giant Panda', 'Ailuropoda melanoleuca', '1869-01-01', 'Vulnerable'),
('Blue Whale', 'Balaenoptera musculus', '1758-01-01', 'Endangered'),
('Red Panda', 'Ailurus fulgens', '1825-01-01', 'Endangered'),
('Polar Bear', 'Ursus maritimus', '1774-01-01', 'Vulnerable'),
('Cheetah', 'Acinonyx jubatus', '1775-01-01', 'Vulnerable'),
('Snowy Owl', 'Bubo scandiacus', '1758-01-01', 'Least Concern'),
('Komodo Dragon', 'Varanus komodoensis', '1912-01-01', 'Endangered'),
('Mountain Gorilla', 'Gorilla beringei beringei', '1903-01-01', 'Endangered'),
('Green Sea Turtle', 'Chelonia mydas', '1758-01-01', 'Endangered'),
('Emperor Penguin', 'Aptenodytes forsteri', '1844-01-01', 'Near Threatened'),
('King Cobra', 'Ophiophagus hannah', '1836-01-01', 'Vulnerable'),
('African Lion', 'Panthera leo', '1758-01-01', 'Vulnerable'),
('Gray Wolf', 'Canis lupus', '1758-01-01', 'Least Concern'),
('Jaguar', 'Panthera onca', '1758-01-01', 'Near Threatened'),
('Orangutan', 'Pongo pygmaeus', '1760-01-01', 'Critically Endangered'),
('Hippopotamus', 'Hippopotamus amphibius', '1758-01-01', 'Vulnerable'),
('Koala', 'Phascolarctos cinereus', '1816-01-01', 'Vulnerable'),
('Tasmanian Devil', 'Sarcophilus harrisii', '1807-01-01', 'Endangered'),
('Arctic Fox', 'Vulpes lagopus', '1758-01-01', 'Least Concern'),
('Giraffe', 'Giraffa camelopardalis', '1758-01-01', 'Vulnerable'),
('Zebra', 'Equus quagga', '1778-01-01', 'Near Threatened'),
('Chimpanzee', 'Pan troglodytes', '1775-01-01', 'Endangered');

INSERT INTO species (common_name, scientific_name, discovery_date, conservation_status)
VALUES ('Red Kangaroo', 'Macropus rufus', '1822-01-01', 'Least Concern');


SELECT * FROM species;


-- Insert sample data into sightings
INSERT INTO sightings (species_id, ranger_id, location, sighting_time, notes)
VALUES
-- species_id, ranger_id, location, sighting_time, notes
-- species_id, ranger_id, location, sighting_time, notes
(1, 1, 'Peak Ridge', '2024-05-10 07:45:00', 'Camera trap image captured'),
(2, 2, 'Bankwood Area', '2024-05-12 16:20:00', 'Juvenile seen'),
(3, 3, 'Bamboo Grove East', '2024-05-15 09:10:00', 'Feeding observed'),
(1, 2, 'Snowfall Pass', '2024-05-18 18:30:00', NULL),
(4, 1, 'Frozen Valley', '2024-05-20 06:15:00', 'Tracks found nearby'),
(5, 2, 'River Bend', '2024-05-21 14:40:00', 'Swimming observed'),
(6, 3, 'Savannah North', '2024-05-22 10:05:00', 'Herd grazing'),
(1, 1, 'Peak Ridge South', '2024-05-23 07:20:00', 'Fresh tracks seen'),   
(7, 2, 'Coral Beach', '2024-05-23 12:30:00', 'Nest spotted'),
(8, 3, 'Dense Forest', '2024-05-24 08:20:00', 'Hunting behavior'),
(2, 1, 'Bankwood Area North', '2024-05-25 09:10:00', 'Juvenile playing'), 
(9, 3, 'Grasslands', '2024-05-25 17:50:00', 'Roaring heard'),
(10, 1, 'Rocky Hills', '2024-05-26 07:10:00', 'Pack movement'),
(3, 2, 'Bamboo Grove West', '2024-05-27 10:45:00', 'Feeding observed again'), 
(11, 2, 'Rainforest Zone', '2024-05-27 19:25:00', 'Tree climbing'),
(12, 3, 'Island Coast', '2024-05-28 11:45:00', 'Family group'),
(13, 1, 'Wetlands', '2024-05-29 15:00:00', 'Submerged'),
(14, 2, 'Eucalyptus Grove', '2024-05-30 09:30:00', 'Sleeping'),
(15, 3, 'Tasman Forest', '2024-05-31 13:15:00', 'Aggressive display'),
(1, 1, 'Snowfall Pass North', '2024-06-01 06:50:00', 'Camera trap triggered'), 
(16, 1, 'Arctic Plains', '2024-06-01 18:05:00', 'Hunting observed'),
(17, 2, 'Savannah East', '2024-06-02 06:50:00', 'Running herd'),
(18, 3, 'Grassland South', '2024-06-03 16:35:00', 'Group grazing'),
(19, 1, 'Jungle Edge', '2024-06-04 10:25:00', 'Tool usage'),
(20, 2, 'Forest Canopy', '2024-06-05 14:10:00', 'Jumping observed'),
(21, 3, 'River Delta', '2024-06-06 07:55:00', 'Swimming'),
(22, 1, 'Mountain Base', '2024-06-07 18:45:00', NULL),
(23, 2, 'Dry Plains', '2024-06-08 09:05:00', 'Dust bathing'),
(24, 3, 'Deep Jungle', '2024-06-09 12:20:00', 'Group movement'),
(25, 1, 'High Peak', '2024-06-10 15:40:00', 'Resting'),
(2, 3, 'Bankwood Area South', '2024-06-11 11:30:00', 'Tiger near water')  

SELECT * FROM sightings;

-- Register a new ranger with provided data with name = 'Derek Fox' and region = 'Coastal Plains'

INSERT INTO rangers (name, region) VALUES ('Derek Fox', 'Coastal Plains');

-- Count unique species ever sighted.
SELECT COUNT(DISTINCT species_id) FROM sightings;

SELECT * FROM sightings;

-- Find all sightings where the location includes "Pass"

SELECT * FROM sightings
WHERE location ILIKE '%Pass%';


--List each ranger's name and their total number of sightings.

SELECT r.name, COUNT(s.sighting_id) AS total_sightings
FROM rangers r
LEFT JOIN sightings s ON r.ranger_id = s.ranger_id
GROUP BY r.name;


--List species that have never been sighted.

SELECT common_name
FROM species
WHERE species_id NOT IN (SELECT DISTINCT species_id FROM sightings);


--Show the most recent 2 sightings.

SELECT sp.common_name AS common_name, s.sighting_time, r.name AS name
FROM sightings s
JOIN rangers r ON s.ranger_id = r.ranger_id
JOIN species sp ON s.species_id = sp.species_id
ORDER BY s.sighting_time DESC
LIMIT 2;

--Update all species discovered before year 1800 to have status 'Historic'

UPDATE species
SET conservation_status = 'Historic'
WHERE discovery_date < '1800-01-01';


--Label each sighting's time of day as 'Morning', 'Afternoon', or 'Evening'

SELECT sighting_id, sighting_time,
CASE
    WHEN EXTRACT(HOUR FROM sighting_time) < 12 THEN 'Morning'
    WHEN EXTRACT(HOUR FROM sighting_time) < 18 THEN 'Afternoon'
    ELSE 'Evening'
END AS time_of_day;

--Delete rangers who have never sighted any species

DELETE FROM rangers
WHERE ranger_id NOT IN (SELECT DISTINCT ranger_id FROM sightings);
