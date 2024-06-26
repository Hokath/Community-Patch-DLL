DELETE FROM Process_Flavors;

INSERT INTO Process_Flavors
	(ProcessType, FlavorType, Flavor)
VALUES
	('PROCESS_WEALTH', 'FLAVOR_GOLD', 5),
	('PROCESS_RESEARCH', 'FLAVOR_SCIENCE', 4),
	('PROCESS_RESEARCH', 'FLAVOR_SPACESHIP', 5),
	('PROCESS_RESEARCH', 'FLAVOR_NUKE', 1),
	('PROCESS_CULTURE', 'FLAVOR_CULTURE', 5),
	('PROCESS_FOOD', 'FLAVOR_GROWTH', 5),
	('PROCESS_DEFENSE', 'FLAVOR_CITY_DEFENSE', 5),
	-- World Congress processes
	('PROCESS_WORLD_FAIR', 'FLAVOR_DIPLOMACY', 30),
	('PROCESS_WORLD_FAIR', 'FLAVOR_CULTURE', 60),
	('PROCESS_WORLD_FAIR', 'FLAVOR_PRODUCTION', 60),
	('PROCESS_WORLD_GAMES', 'FLAVOR_DIPLOMACY', 30),
	('PROCESS_WORLD_GAMES', 'FLAVOR_HAPPINESS', 50),
	('PROCESS_WORLD_GAMES', 'FLAVOR_CULTURE', 40),
	('PROCESS_TREASURE_FLEET', 'FLAVOR_NAVAL', 40),
	('PROCESS_TREASURE_FLEET', 'FLAVOR_OFFENSE', 40),
	('PROCESS_TREASURE_FLEET', 'FLAVOR_GOLD', 25),
	('PROCESS_WARGAMES', 'FLAVOR_NAVAL', 40),
	('PROCESS_WARGAMES', 'FLAVOR_OFFENSE', 40),
	('PROCESS_WARGAMES', 'FLAVOR_GOLD', 25),
	('PROCESS_UNITED_NATIONS', 'FLAVOR_DIPLOMACY', 100),
	('PROCESS_UNITED_NATIONS', 'FLAVOR_GOLD', 30),
	('PROCESS_UNITED_NATIONS', 'FLAVOR_HAPPINESS', 50),
	('PROCESS_UNITED_NATIONS', 'FLAVOR_CULTURE', 40),
	('PROCESS_INTERNATIONAL_SPACE_STATION', 'FLAVOR_DIPLOMACY', 30),
	('PROCESS_INTERNATIONAL_SPACE_STATION', 'FLAVOR_SCIENCE', 50),
	('PROCESS_INTERNATIONAL_SPACE_STATION', 'FLAVOR_GREAT_PEOPLE', 40),
	('PROCESS_INTERNATIONAL_SPACE_STATION', 'FLAVOR_WONDER', 40);
