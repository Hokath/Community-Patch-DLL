-- Worker build actions
UPDATE Builds
SET Help = 'TXT_KEY_BUILD_FARM_HELP', Recommendation = 'TXT_KEY_BUILD_FARM_REC'
WHERE Type = 'BUILD_FARM';

UPDATE Builds
SET PrereqTech = 'TECH_CURRENCY', Help = 'TXT_KEY_BUILD_TRADING_POST_HELP'
WHERE Type = 'BUILD_TRADING_POST';

UPDATE Builds
SET PrereqTech = 'TECH_METAL_CASTING', Help = 'TXT_KEY_BUILD_LUMBERMILL_HELP'
WHERE Type = 'BUILD_LUMBERMILL';

UPDATE Builds
SET Time = 300
WHERE Type = 'BUILD_FORT';

UPDATE Builds
SET PrereqTech = 'TECH_COMBUSTION'
WHERE Type = 'BUILD_WELL';

-- Worker repair actions
INSERT INTO Unit_Builds
	(UnitType, BuildType)
VALUES
	('UNIT_WORKER', 'BUILD_REPAIR_EMBARKED');

UPDATE Builds
SET
	Repair = (SELECT Repair FROM Builds WHERE Type = 'BUILD_REPAIR'),
	Time = (SELECT Time FROM Builds WHERE Type = 'BUILD_REPAIR'),
	Water = 1,
	CanBeEmbarked = 1
WHERE Type = 'BUILD_REPAIR_EMBARKED';

-- Great People build actions
INSERT INTO Unit_Builds
	(UnitType, BuildType)
VALUES
	('UNIT_GREAT_DIPLOMAT', 'BUILD_EMBASSY');

UPDATE Builds
SET Help = 'TXT_KEY_BUILD_CONSUMED_HELP_CUSTOMS_HOUSE'
WHERE Type = 'BUILD_CUSTOMS_HOUSE';

UPDATE Builds
SET Help = 'TXT_KEY_BUILD_CONSUMED_HELP_MANUFACTORY'
WHERE Type = 'BUILD_MANUFACTORY';

UPDATE Builds
SET Help = 'TXT_KEY_BUILD_CONSUMED_HELP_ACADEMY'
WHERE Type = 'BUILD_ACADEMY';

-- Remove Features
UPDATE Builds
SET PrereqTech = 'TECH_MINING'
WHERE Type = 'BUILD_REMOVE_FOREST';

UPDATE Builds
SET PrereqTech = 'TECH_TRAPPING'
WHERE Type = 'BUILD_REMOVE_JUNGLE';

UPDATE Builds
SET PrereqTech = 'TECH_MASONRY'
WHERE Type = 'BUILD_REMOVE_MARSH';

UPDATE Builds
SET Time = 300
WHERE Type = 'BUILD_SCRUB_FALLOUT';

-- Village and Fort need to remove features
UPDATE BuildFeatures
SET Remove = 1
WHERE BuildType IN ('BUILD_TRADING_POST', 'BUILD_FORT');

-- Camp needs to remove Marsh
INSERT INTO BuildFeatures
	(BuildType, FeatureType, Time, Remove)
VALUES
	('BUILD_CAMP', 'FEATURE_MARSH', 500, 1),
	('BUILD_EMBASSY', 'FEATURE_FOREST', NULL, 1),
	('BUILD_EMBASSY', 'FEATURE_JUNGLE', NULL, 1),
	('BUILD_EMBASSY', 'FEATURE_MARSH', NULL, 1);
