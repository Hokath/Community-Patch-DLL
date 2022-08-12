-- General Changes to the DLL's Global Values

-- Defensive Pact Limits
UPDATE Defines SET Value = '2' WHERE Name = 'DEFENSIVE_PACT_LIMIT_BASE'; -- The base number of Defensive Pacts that a civilization can form. If set to 0 or lower, Defensive Pacts cannot be formed. Each player on a team counts as 1 Defensive Pact.
UPDATE Defines SET Value = '10' WHERE Name = 'DEFENSIVE_PACT_LIMIT_SCALER'; -- Additional number of Defensive Pacts permitted for each X other major civilizations ingame. 0 disables the scaler.
UPDATE Defines SET Value = '2' WHERE Name = 'AI_DEFENSIVE_PACT_LIMIT_BASE'; -- Limit for AI players. Only does anything if lower than the base limit.
UPDATE Defines SET Value = '10' WHERE Name = 'AI_DEFENSIVE_PACT_LIMIT_SCALER'; -- Limit for AI players. Only does anything if lower than the base limit.

-- War
UPDATE Defines SET Value = '3' WHERE Name = 'EMBARKED_UNIT_MOVEMENT';
UPDATE Defines SET Value = '300' WHERE Name = 'MAX_CITY_HIT_POINTS';
UPDATE Defines SET Value = '5' WHERE Name = 'ENEMY_HEAL_RATE';
UPDATE Defines SET Value = '10' WHERE Name = 'NEUTRAL_HEAL_RATE';
UPDATE Defines SET Value = '15' WHERE Name = 'FRIENDLY_HEAL_RATE';
UPDATE Defines SET Value = '20' WHERE Name = 'CITY_HEAL_RATE';
UPDATE Defines SET Value = '500' WHERE Name = 'CITY_STRENGTH_DEFAULT';
UPDATE Defines SET Value = '10' WHERE Name = 'CITY_STRENGTH_POPULATION_CHANGE';
UPDATE Defines SET Value = '200' WHERE Name = 'CITY_STRENGTH_UNIT_DIVISOR';
UPDATE Defines SET Value = '3.6' WHERE Name = 'CITY_STRENGTH_TECH_BASE';
UPDATE Defines SET Value = '2.0' WHERE Name = 'CITY_STRENGTH_TECH_EXPONENT';
UPDATE Defines SET Value = '0' WHERE Name = 'CITY_STRENGTH_TECH_MULTIPLIER';
UPDATE Defines SET Value = '8' WHERE Name = 'CITY_HIT_POINTS_HEALED_PER_TURN';
UPDATE Defines SET Value = '2' WHERE Name = 'HEAVY_RESOURCE_THRESHOLD';
UPDATE Defines SET Value = '10' WHERE Name = 'HILLS_EXTRA_DEFENSE';
UPDATE Defines SET Value = '500' WHERE Name = 'AIR_UNIT_REBASE_RANGE_MULTIPLIER';
UPDATE Defines SET Value = '75' WHERE Name = 'CITY_CAPTURE_POPULATION_PERCENT';
UPDATE Defines SET Value = '2' WHERE Name = 'EXPERIENCE_ATTACKING_CITY_RANGED';
UPDATE Defines SET Value = '75' WHERE Name = 'COMBAT_CAPTURE_HEALTH';
UPDATE Defines SET Value = '0' WHERE Name = 'CITY_RANGED_ATTACK_STRENGTH_MULTIPLIER';
UPDATE Defines SET Value = '2' WHERE Name = 'BASE_CITY_AIR_STACKING';
UPDATE Defines SET Value = '1' WHERE Name = 'NAVAL_PLOT_BLOCKADE_RANGE';
UPDATE Defines SET Value = '-25' WHERE Name = 'BLOCKADE_GOLD_PENALTY';
UPDATE Defines SET Value = '20' WHERE Name = 'BLOCKADED_CITY_ATTACK_MODIFIER';

--Tech
UPDATE Defines SET Value = '80' WHERE Name = 'BARBARIAN_TECH_PERCENT';
UPDATE Defines SET Value = '60' WHERE Name = 'MINOR_CIV_TECH_PERCENT';
UPDATE Defines SET Value = '100' WHERE Name = 'TECH_COST_EXTRA_TEAM_MEMBER_MODIFIER';

-- Minors
UPDATE Defines SET Value = '100' WHERE Name = 'MINOR_CIV_PRODUCTION_PERCENT';
UPDATE Defines SET Value = '75' WHERE Name = 'MINOR_CIV_GROWTH_PERCENT';
UPDATE Defines SET Value = '0' WHERE Name = 'MINOR_CIV_MERCANTILE_RESOURCES_KEEP_ON_CAPTURE_DISABLED';
UPDATE Defines SET Value = '50' WHERE Name = 'BALANCE_MINOR_PROTECTION_MINIMUM_DURATION';

-- Policies
UPDATE Defines SET Value = '2.22' WHERE Name = 'POLICY_COST_EXPONENT';
UPDATE Defines SET Value = '4' WHERE Name = 'POLICY_COST_INCREASE_TO_BE_EXPONENTED';
UPDATE Defines SET Value = '.20' WHERE Name = 'POLICY_COST_EXTRA_VALUE';
UPDATE Defines SET Value = '50' WHERE Name = 'BASE_POLICY_COST';

-- Religion
UPDATE Defines SET Value = '50' WHERE Name = 'RELIGION_MIN_FAITH_FIRST_PANTHEON';
UPDATE Defines SET Value = '0' WHERE Name = 'RELIGION_GAME_FAITH_DELTA_NEXT_PANTHEON';
UPDATE Defines SET Value = '100' WHERE Name = 'RELIGION_BASE_CHANCE_PROPHET_SPAWN';
UPDATE Defines SET Value = '3' WHERE Name = 'RELIGION_MAX_MISSIONARIES';
UPDATE Defines SET Value = '800' WHERE Name = 'RELIGION_MIN_FAITH_FIRST_PROPHET';
UPDATE Defines SET Value = '300' WHERE Name = 'RELIGION_FAITH_DELTA_NEXT_PROPHET';
UPDATE Defines SET Value = '1200' WHERE Name = 'RELIGION_MIN_FAITH_SECOND_PROPHET';
UPDATE Defines SET Value = '1000' WHERE Name = 'RELIGION_MIN_FAITH_FIRST_GREAT_PERSON';
UPDATE Defines SET Value = '1500' WHERE Name = 'RELIGION_FAITH_DELTA_NEXT_GREAT_PERSON';
UPDATE Defines SET Value = '50' WHERE Name = 'INQUISITION_EFFECTIVENESS';

-- Science
UPDATE Defines SET Value = '0' WHERE Name = 'SCIENCE_PER_POPULATION';
UPDATE Defines SET Value = '10' WHERE Name = 'TECH_COST_TOTAL_KNOWN_TEAM_MODIFIER';

-- Puppet Stuff
UPDATE Defines SET Value = '-80' WHERE Name = 'PUPPET_FAITH_MODIFIER';
UPDATE Defines SET Value = '-80' WHERE Name = 'PUPPET_CULTURE_MODIFIER';
UPDATE Defines SET Value = '-80' WHERE Name = 'PUPPET_SCIENCE_MODIFIER';
UPDATE Defines SET Value = '-80' WHERE Name = 'PUPPET_TOURISM_MODIFIER';
UPDATE Defines SET Value = '-80' WHERE Name = 'PUPPET_GOLD_MODIFIER';
UPDATE Defines SET Value = '-80' WHERE Name = 'PUPPET_GOLDEN_AGE_MODIFIER';

-- Trade Routes
UPDATE Defines SET Value = '6' WHERE Name = 'TRADE_ROUTE_CAPITAL_POP_GOLD_MULTIPLIER';
UPDATE Defines SET Value = '50' WHERE Name = 'TRADE_ROUTE_CITY_POP_GOLD_MULTIPLIER';
UPDATE Defines SET Value = '65' WHERE Name = 'INTERNATIONAL_TRADE_CITY_GPT_DIVISOR';
UPDATE Defines SET Value = '25' WHERE Name = 'TRADE_ROUTE_BASE_SEA_MODIFIER';
UPDATE Defines SET Value = '600' WHERE Name = 'TRADE_ROUTE_BASE_FOOD_VALUE';	
UPDATE Defines SET Value = '600' WHERE Name = 'TRADE_ROUTE_BASE_PRODUCTION_VALUE';
UPDATE Defines SET Value = '10' WHERE Name = 'TRADE_ROUTE_DIFFERENT_RESOURCE_VALUE';
UPDATE Defines SET Value = '125' WHERE Name = 'TRADE_ROUTE_CULTURE_DIVISOR_TIMES100';
UPDATE Defines SET Value = '125' WHERE Name = 'TRADE_ROUTE_SCIENCE_DIVISOR_TIMES100';
-- These 5 values change the amount of science earned from trade routes with influence civs. Each is adding to an incremental value (so Familiar is already 1, Popular already 2, etc.)
UPDATE Defines SET Value = '2' WHERE Name = 'BALANCE_SCIENCE_INFLUENCE_LEVEL_EXOTIC';
UPDATE Defines SET Value = '4' WHERE Name = 'BALANCE_SCIENCE_INFLUENCE_LEVEL_FAMILIAR';
UPDATE Defines SET Value = '6' WHERE Name = 'BALANCE_SCIENCE_INFLUENCE_LEVEL_POPULAR';
UPDATE Defines SET Value = '8' WHERE Name = 'BALANCE_SCIENCE_INFLUENCE_LEVEL_INFLUENTIAL';
UPDATE Defines SET Value = '10' WHERE Name = 'BALANCE_SCIENCE_INFLUENCE_LEVEL_DOMINANT';


-- Deal Durations
UPDATE GameSpeeds SET DealDuration = '100' WHERE Type = 'GAMESPEED_MARATHON';
UPDATE GameSpeeds SET DealDuration = '70' WHERE Type = 'GAMESPEED_EPIC';
UPDATE GameSpeeds SET DealDuration = '50' WHERE Type = 'GAMESPEED_STANDARD';
UPDATE GameSpeeds SET DealDuration = '30' WHERE Type = 'GAMESPEED_QUICK';

-- Instant Yield Values
UPDATE GameSpeeds SET InstantYieldPercent = '200' WHERE Type = 'GAMESPEED_MARATHON';
UPDATE GameSpeeds SET InstantYieldPercent = '150' WHERE Type = 'GAMESPEED_EPIC';
UPDATE GameSpeeds SET InstantYieldPercent = '100' WHERE Type = 'GAMESPEED_STANDARD';
UPDATE GameSpeeds SET InstantYieldPercent = '50' WHERE Type = 'GAMESPEED_QUICK';

-- City Stuff
UPDATE Defines SET Value = '2.22' WHERE Name = 'CITY_GROWTH_EXPONENT';
UPDATE Defines SET Value = '12.0' WHERE Name = 'CITY_GROWTH_MULTIPLIER';
UPDATE Defines SET Value = '20' WHERE Name = 'CULTURE_COST_FIRST_PLOT';
UPDATE Defines SET Value = '15' WHERE Name = 'CULTURE_COST_LATER_PLOT_MULTIPLIER';
UPDATE Defines SET Value = '1.35' WHERE Name = 'CULTURE_COST_LATER_PLOT_EXPONENT';
UPDATE Defines SET Value = '115' WHERE Name = 'MINOR_CIV_PLOT_CULTURE_COST_MULTIPLIER';
UPDATE Defines SET Value = '20' WHERE Name = 'PLOT_INFLUENCE_WATER_COST';
UPDATE Defines SET Value = '-40' WHERE Name = 'PLOT_INFLUENCE_YIELD_POINT_COST'; -- 3 yield tops 1 distance
UPDATE Defines SET Value = '-180' WHERE Name = 'PLOT_INFLUENCE_RESOURCE_COST'; -- should be more than 100 to be able to skip one ring
UPDATE Defines SET Value = '0' WHERE Name = 'PLOT_BUY_RESOURCE_COST'; -- why should a more valuable plot be cheaper?
UPDATE Defines SET Value = '-500' WHERE Name = 'PLOT_INFLUENCE_NW_COST';
UPDATE Defines SET Value = '0' WHERE Name = 'PLOT_BUY_NW_COST';
UPDATE Defines SET Value = '-50' WHERE Name = 'VERY_UNHAPPY_GROWTH_PENALTY';
UPDATE Defines SET Value = '-25' WHERE Name = 'UNHAPPY_GROWTH_PENALTY';
UPDATE Defines SET Value = '4' WHERE Name = 'CITY_MIN_SIZE_FOR_SETTLERS';
UPDATE Defines SET Value = '5' WHERE Name = 'BALANCE_CONQUEST_REDUCTION_BOOST'; -- Reduce turns for conquest of cities. Base is 25 for each level of influence, this adds to it.

-- Happiness
UPDATE Defines SET Value = '35' WHERE Name = 'VERY_UNHAPPY_THRESHOLD';
UPDATE Defines SET Value = '20' WHERE Name = 'SUPER_UNHAPPY_THRESHOLD';
UPDATE Defines SET Value = '-20' WHERE Name = 'VERY_UNHAPPY_MAX_COMBAT_PENALTY';

-- Great People Stuff
UPDATE Defines SET Value = '150' WHERE Name = 'GREAT_PERSON_THRESHOLD_BASE';
UPDATE Defines SET Value = '250' WHERE Name = 'GREAT_PERSON_THRESHOLD_INCREASE';

-- Golden Ages
UPDATE Defines SET Value = '400' WHERE Name = 'GOLDEN_AGE_BASE_THRESHOLD_HAPPINESS';
UPDATE Defines SET Value = '2000' WHERE Name = 'GOLDEN_AGE_EACH_GA_ADDITIONAL_HAPPINESS';

-- Unit Stuff
UPDATE Defines SET Value = '5' WHERE Name = 'PRODUCTION_PENALTY_PER_UNIT_OVER_SUPPLY';
UPDATE Defines SET Value = '0.68' WHERE Name = 'HURRY_GOLD_PRODUCTION_EXPONENT';
UPDATE Defines SET Value = '1' WHERE Name = 'UNIT_UPGRADE_COST_PER_PRODUCTION';
UPDATE Defines SET Value = '45' WHERE Name = 'BARBARIAN_MAX_XP_VALUE';
UPDATE Defines SET Value = '6' WHERE Name = 'UNIT_MAINTENANCE_GAME_EXPONENT_DIVISOR';
UPDATE Defines SET Value = '0' WHERE Name = 'VERY_UNHAPPY_CANT_TRAIN_SETTLERS';
UPDATE Defines SET Value = '0' WHERE Name = 'STRATEGIC_RESOURCE_EXHAUSTED_PENALTY';
UPDATE Defines SET Value = '27' WHERE Name = 'MAX_PLOTS_PER_EXPLORER';
UPDATE Defines SET Value = '-99' WHERE Name = 'UNIT_UPGRADE_COST_DISCOUNT_MAX';

-- Production Stuff
UPDATE Defines SET Value = '0' WHERE Name = 'INDUSTRIAL_ROUTE_PRODUCTION_MOD';

-- Spy Stuff
UPDATE Defines SET Value = '10' WHERE Name = 'BALANCE_SPY_RESPAWN_TIMER';
UPDATE Defines SET Value = '25' WHERE Name = 'ESPIONAGE_GATHERING_INTEL_RATE_BASE_PERCENT';
UPDATE Defines SET Value = '25' WHERE Name = 'ESPIONAGE_GATHERING_INTEL_RATE_BY_SPY_RANK_PERCENT';
UPDATE Defines SET Value = '15' WHERE Name = 'ESPIONAGE_INFLUENCE_GAINED_FOR_RIGGED_ELECTION';
UPDATE Defines SET Value = '10' WHERE Name = 'ESPIONAGE_COUP_MULTIPLY_CONSTANT';
UPDATE Defines SET Value = '1000' WHERE Name = 'ESPIONAGE_GATHERING_INTEL_COST_PERCENT';

-- World Congress
UPDATE Defines SET Value = '33' WHERE Name = 'TEMPORARY_CULTURE_BOOST_MOD';
UPDATE Defines SET Value = '50' WHERE Name = 'TEMPORARY_TOURISM_BOOST_MOD';

UPDATE Resolutions SET TechPrereqAnyMember = 'TECH_NUCLEAR_FISSION' WHERE Type = 'RESOLUTION_WORLD_IDEOLOGY';
UPDATE Resolutions SET TechPrereqAnyMember = 'TECH_ROCKETRY' WHERE Type = 'RESOLUTION_INTERNATIONAL_SPACE_STATION';

-- Global Score
UPDATE Defines SET Value = '10' WHERE Name = 'SCORE_CITY_MULTIPLIER';
UPDATE Defines SET Value = '2' WHERE Name = 'SCORE_POPULATION_MULTIPLIER';
UPDATE Defines SET Value = '6' WHERE Name = 'SCORE_TECH_MULTIPLIER';
UPDATE Defines SET Value = '16' WHERE Name = 'SCORE_POLICY_MULTIPLIER';
UPDATE Defines SET Value = '5' WHERE Name = 'SCORE_BELIEF_MULTIPLIER';
UPDATE Defines SET Value = '3' WHERE Name = 'SCORE_RELIGION_CITIES_MULTIPLIER';