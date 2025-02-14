-- Clausewitz's Legacy

UPDATE Policies
SET WarWearinessModifier = '25'
WHERE Type = 'POLICY_NEW_ORDER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET RazingSpeedBonus = '100'
WHERE Type = 'POLICY_NEW_ORDER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET Level = '2'
WHERE Type = 'POLICY_NEW_ORDER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- Cult of Personality 

UPDATE Policies
SET NumFreeGreatPeople = '1'
WHERE Type = 'POLICY_CULT_PERSONALITY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET IncludesOneShotFreeUnits = '1'
WHERE Type = 'POLICY_CULT_PERSONALITY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET PositiveWarScoreTourismMod = '50'
WHERE Type = 'POLICY_CULT_PERSONALITY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );


-- Elite Forces
UPDATE Policies
SET ExpModifier = '50'
WHERE Type = 'POLICY_ELITE_FORCES' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET FreeExperience = '15'
WHERE Type = 'POLICY_ELITE_FORCES' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET WoundedUnitDamageMod = '0'
WHERE Type = 'POLICY_ELITE_FORCES' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- Fortified Borders

DELETE FROM Policy_BuildingClassHappiness
WHERE PolicyType = 'POLICY_FORTIFIED_BORDERS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- Futurism
UPDATE Policies
SET EventTourism = '3'
WHERE Type = 'POLICY_FUTURISM' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

INSERT INTO Policy_ConquerorYield
	(PolicyType, YieldType, Yield)
VALUES
	('POLICY_FUTURISM', 'YIELD_TOURISM', 50);

DELETE FROM Policy_TourismOnUnitCreation
WHERE PolicyType = 'POLICY_FUTURISM' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

INSERT INTO Policy_GreatWorkYieldChanges
	(PolicyType, YieldType, Yield)
VALUES
	('POLICY_FUTURISM', 'YIELD_CULTURE', 2);

-- Industrial Espionage (now Lebensraum)
UPDATE Policies
SET StealTechFasterModifier = '0'
WHERE Type = 'POLICY_INDUSTRIAL_ESPIONAGE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET CultureBombBoost = '1'
WHERE Type = 'POLICY_INDUSTRIAL_ESPIONAGE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- Lightning Warfare

-- Militarism

DELETE FROM Policy_BuildingClassHappiness
WHERE PolicyType = 'POLICY_MILITARISM' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET Level = '3'
WHERE Type = 'POLICY_MILITARISM' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- Mobilization
UPDATE Policies
SET UnitUpgradeCostMod = '-33'
WHERE Type = 'POLICY_MOBILIZATION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- Police State

-- Nationalism

UPDATE Policies
SET UnitGoldMaintenanceMod = '0'
WHERE Type = 'POLICY_NATIONALISM' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

INSERT INTO Policy_ResourcefromCSAlly
	(PolicyType, ResourceType, Number)
VALUES
	('POLICY_NATIONALISM', 'RESOURCE_OIL', 100),
	('POLICY_NATIONALISM', 'RESOURCE_COAL', 100);
-- Third Alternative

DELETE FROM Policy_CapitalYieldChanges
WHERE PolicyType = 'POLICY_THIRD_ALTERNATIVE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET UnitGoldMaintenanceMod = '-25'
WHERE Type = 'POLICY_THIRD_ALTERNATIVE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- Total War
UPDATE Policies
SET FreeExperience = '0'
WHERE Type = 'POLICY_TOTAL_WAR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET MilitaryProductionModifier = '0'
WHERE Type = 'POLICY_TOTAL_WAR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET WarScoreModifier = '25'
WHERE Type = 'POLICY_TOTAL_WAR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET MinorBullyScoreModifier = '50'
WHERE Type = 'POLICY_TOTAL_WAR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- Gunboat

UPDATE Policies
SET MinorBullyScoreModifier = '0'
WHERE Type = 'POLICY_GUNBOAT_DIPLOMACY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET CanBullyFriendlyCS = '1'
WHERE Type = 'POLICY_GUNBOAT_DIPLOMACY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET BullyGlobalCSInfluenceShift = '25'
WHERE Type = 'POLICY_GUNBOAT_DIPLOMACY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET AfraidMinorPerTurnInfluence = '0'
WHERE Type = 'POLICY_GUNBOAT_DIPLOMACY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );


-- United Front
UPDATE Policies
SET MilitaryUnitGiftExtraInfluence = '40'
WHERE Type = 'POLICY_UNITED_FRONT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET CityStateUnitFrequencyModifier = '300'
WHERE Type = 'POLICY_UNITED_FRONT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET NoAlliedCSInfluenceDecayAtWar = '1'
WHERE Type = 'POLICY_UNITED_FRONT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- Autarky

DELETE FROM Policy_BuildingClassHappiness
WHERE PolicyType = 'POLICY_UNIVERSAL_HEALTHCARE_A' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET Help = 'TXT_KEY_POLICY_UNIVERSAL_HEALTHCARE_A_HELP'
WHERE Type = 'POLICY_UNIVERSAL_HEALTHCARE_A' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET Description = 'TXT_KEY_POLICY_UNIVERSAL_HEALTHCARE_A'
WHERE Type = 'POLICY_UNIVERSAL_HEALTHCARE_A' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET Civilopedia = 'TXT_KEY_POLICY_UNIVERSAL_HEALTHCARE_TEXT_A'
WHERE Type = 'POLICY_UNIVERSAL_HEALTHCARE_A' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET Help = 'TXT_KEY_POLICY_UNIVERSAL_HEALTHCARE_A_HELP'
WHERE Type = 'POLICY_UNIVERSAL_HEALTHCARE_A' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET VassalsNoRebel = 'true'
WHERE Type = 'POLICY_UNIVERSAL_HEALTHCARE_A' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET VassalCSBonusModifier = '25'
WHERE Type = 'POLICY_UNIVERSAL_HEALTHCARE_A' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET WorkerSpeedModifier = '50'
WHERE Type = 'POLICY_UNIVERSAL_HEALTHCARE_A' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

--Militarism

UPDATE Policies
SET AllCityFreeBuilding = 'BUILDINGCLASS_AIRPORT'
WHERE Type = 'POLICY_MILITARISM';

-- Building Class Changes

INSERT INTO Policy_BuildingClassYieldChanges
	(PolicyType, BuildingClassType, YieldType, YieldChange)
VALUES
	('POLICY_MOBILIZATION', 'BUILDINGCLASS_WALLS', 'YIELD_SCIENCE', 3),
	('POLICY_MOBILIZATION', 'BUILDINGCLASS_CASTLE', 'YIELD_SCIENCE', 3),
	('POLICY_MOBILIZATION', 'BUILDINGCLASS_ARSENAL', 'YIELD_SCIENCE', 3),
	('POLICY_MOBILIZATION', 'BUILDINGCLASS_MILITARY_BASE', 'YIELD_SCIENCE', 3),
	('POLICY_MOBILIZATION', 'BUILDINGCLASS_BOMB_SHELTER', 'YIELD_SCIENCE', 3),
	('POLICY_FORTIFIED_BORDERS', 'BUILDINGCLASS_CONSTABLE', 'YIELD_PRODUCTION', 5),
	('POLICY_FORTIFIED_BORDERS', 'BUILDINGCLASS_CONSTABLE', 'YIELD_CULTURE', 3),
	('POLICY_FORTIFIED_BORDERS', 'BUILDINGCLASS_POLICE_STATION', 'YIELD_PRODUCTION', 5),
	('POLICY_FORTIFIED_BORDERS', 'BUILDINGCLASS_POLICE_STATION', 'YIELD_CULTURE', 3);

INSERT INTO Policy_BuildingClassProductionModifiers
	(PolicyType, BuildingClassType, ProductionModifier)
VALUES
	('POLICY_FORTIFIED_BORDERS', 'BUILDINGCLASS_CONSTABLE', 100),
	('POLICY_FORTIFIED_BORDERS', 'BUILDINGCLASS_POLICE_STATION', 100);

INSERT INTO Policy_BuildingClassHappiness
	(PolicyType, BuildingClassType, Happiness)
VALUES
	('POLICY_POLICE_STATE', 'BUILDINGCLASS_POLICE_STATION', 1);

-- Improvement Changes

INSERT INTO Policy_ImprovementYieldChanges
	(PolicyType, ImprovementType, YieldType, Yield)
VALUES
	('POLICY_MOBILIZATION', 'IMPROVEMENT_CITADEL', 'YIELD_SCIENCE', 3);

INSERT INTO Policy_BuildingClassYieldModifiers
	(PolicyType, BuildingClassType, YieldType, YieldMod)
VALUES
	('POLICY_NATIONALISM', 'BUILDINGCLASS_SEAPORT', 'YIELD_PRODUCTION', 10);

-- Border Growth Changes

INSERT INTO Policy_YieldFromBorderGrowth
	(PolicyType, YieldType, Yield)
VALUES
	('POLICY_INDUSTRIAL_ESPIONAGE', 'YIELD_CULTURE', 10),
	('POLICY_INDUSTRIAL_ESPIONAGE', 'YIELD_GOLDEN_AGE_POINTS', 10);

-- Promotions
DELETE FROM Policy_FreePromotions
WHERE PolicyType = 'POLICY_LIGHTNING_WARFARE';

INSERT INTO Policy_FreePromotions
	(PolicyType, PromotionType)
VALUES
	('POLICY_LIGHTNING_WARFARE', 'PROMOTION_FAST_GENERAL'),
	('POLICY_LIGHTNING_WARFARE', 'PROMOTION_LIGHTNING_WARFARE_GUN'),
	('POLICY_LIGHTNING_WARFARE', 'PROMOTION_LIGHTNING_WARFARE_ARMOR'),
	('POLICY_NATIONALISM', 'PROMOTION_PRIZE_RULES');

INSERT INTO UnitPromotions_UnitCombats
	(PromotionType, UnitCombatType)
VALUES
	('PROMOTION_LIGHTNING_WARFARE_GUN', 'UNITCOMBAT_GUN'),
	('PROMOTION_LIGHTNING_WARFARE_ARMOR', 'UNITCOMBAT_ARMOR'),
	('PROMOTION_PRIZE_RULES', 'UNITCOMBAT_SUBMARINE'),
	('PROMOTION_PRIZE_RULES', 'UNITCOMBAT_NAVALMELEE');

-- Unit Bonuses
INSERT INTO Policy_UnitCombatProductionModifiers
	(PolicyType, UnitCombatType, ProductionModifier)
VALUES
	('POLICY_MILITARISM', 'UNITCOMBAT_BOMBER', 25),
	('POLICY_MILITARISM', 'UNITCOMBAT_FIGHTER', 25),
	('POLICY_TOTAL_WAR', 'UNITCOMBAT_RECON', 25),
	('POLICY_TOTAL_WAR', 'UNITCOMBAT_ARCHER', 25),
	('POLICY_TOTAL_WAR', 'UNITCOMBAT_MOUNTED', 25),
	('POLICY_TOTAL_WAR', 'UNITCOMBAT_MELEE', 25),
	('POLICY_TOTAL_WAR', 'UNITCOMBAT_SIEGE', 25),
	('POLICY_TOTAL_WAR', 'UNITCOMBAT_GUN', 25),
	('POLICY_TOTAL_WAR', 'UNITCOMBAT_ARMOR', 25),
	('POLICY_TOTAL_WAR', 'UNITCOMBAT_HELICOPTER', 25);

INSERT INTO Policy_ImprovementYieldChanges
	(PolicyType, ImprovementType, YieldType, Yield)
VALUES
	('POLICY_MOBILIZATION', 'IMPROVEMENT_TERRACE_FARM', 'YIELD_SCIENCE', 3),
	('POLICY_MOBILIZATION', 'IMPROVEMENT_EKI', 'YIELD_SCIENCE', 3),
	('POLICY_MOBILIZATION', 'IMPROVEMENT_KUNA', 'YIELD_SCIENCE', 3),
	('POLICY_MOBILIZATION', 'IMPROVEMENT_ENCAMPMENT_SHOSHONE', 'YIELD_SCIENCE', 3),
	('POLICY_MOBILIZATION', 'IMPROVEMENT_POLDER', 'YIELD_SCIENCE', 3),
	('POLICY_MOBILIZATION', 'IMPROVEMENT_CHATEAU', 'YIELD_SCIENCE', 3),
	('POLICY_MOBILIZATION', 'IMPROVEMENT_KASBAH', 'YIELD_SCIENCE', 3),
	('POLICY_MOBILIZATION', 'IMPROVEMENT_BRAZILWOOD_CAMP', 'YIELD_SCIENCE', 3),
	('POLICY_MOBILIZATION', 'IMPROVEMENT_MOAI', 'YIELD_SCIENCE', 3),
	('POLICY_MOBILIZATION', 'IMPROVEMENT_FEITORIA', 'YIELD_SCIENCE', 3);