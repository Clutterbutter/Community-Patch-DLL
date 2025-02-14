-- Peace Loving (Now Mandate of Heaven)
UPDATE Beliefs
SET HappinessPerXPeacefulForeignFollowers = '0'
WHERE Type = 'BELIEF_PEACE_LOVING' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

-- Interfaith Dialog (Now Hero Worship)
UPDATE Beliefs
SET SciencePerOtherReligionFollower = '0'
WHERE Type = 'BELIEF_INTERFAITH_DIALOGUE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

-- Ceremonial Burial
UPDATE Beliefs
SET HappinessPerFollowingCity = '0'
WHERE Type = 'BELIEF_CEREMONIAL_BURIAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

-- Church Property (Now Holy Law)
UPDATE Beliefs
SET GoldPerFollowingCity = '0'
WHERE Type = 'BELIEF_CHURCH_PROPERTY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

-- Tithe (Now Way of the Pilgrim)
UPDATE Beliefs 
SET GoldPerXFollowers = '0'
WHERE Type = 'BELIEF_TITHE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET PolicyReductionWonderXFollowerCities = '8'
WHERE Type = 'BELIEF_TITHE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

-- Initiation Rites (Now Way of Transcendence)
UPDATE Beliefs
SET GoldPerFirstCityConversion = '0'
WHERE Type = 'BELIEF_INITIATION_RITES' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

-- Papal Primacy (Now Council of Elders)
UPDATE Beliefs
SET CityStateMinimumInfluence = '0'
WHERE Type = 'BELIEF_PAPAL_PRIMACY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );


-- scalers

UPDATE Beliefs
SET CityScalerLimiter = '20'
WHERE Type = 'BELIEF_PAPAL_PRIMACY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET CityScalerLimiter = '20'
WHERE Type = 'BELIEF_INITIATION_RITES' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET CityScalerLimiter = '20'
WHERE Type = 'BELIEF_CEREMONIAL_BURIAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET CityScalerLimiter = '20'
WHERE Type = 'BELIEF_RELIQUARY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET CityScalerLimiter = '20'
WHERE Type = 'BELIEF_TO_GLORY_OF_GOD' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET FollowerScalerLimiter = '250'
WHERE Type = 'BELIEF_CHURCH_PROPERTY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );



-- Pilgrimage (Now Apostolic Tradition
DELETE FROM Belief_YieldChangePerForeignCity
WHERE BeliefType = 'BELIEF_PILGRIMAGE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

-- World Church (Now Theocratic Rule)
DELETE FROM Belief_YieldChangePerXForeignFollowers
WHERE BeliefType = 'BELIEF_WORLD_CHURCH' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

-- NEW

INSERT INTO Belief_YieldFromGPUse
	(BeliefType, YieldType, Yield)
VALUES
	('BELIEF_CEREMONIAL_BURIAL', 'YIELD_FAITH', 14),
	('BELIEF_CEREMONIAL_BURIAL', 'YIELD_CULTURE', 14);

INSERT INTO Belief_YieldBonusGoldenAge
	(BeliefType, YieldType, Yield)
VALUES
	('BELIEF_PEACE_LOVING', 'YIELD_FOOD', 20),
	('BELIEF_PEACE_LOVING', 'YIELD_PRODUCTION', 20),
	('BELIEF_PEACE_LOVING', 'YIELD_GOLD', 20),
	('BELIEF_PEACE_LOVING', 'YIELD_CULTURE', 20),
	('BELIEF_PEACE_LOVING', 'YIELD_FAITH', 20),
	('BELIEF_PEACE_LOVING', 'YIELD_SCIENCE', 20);

INSERT INTO Belief_YieldFromSpread
	(BeliefType, YieldType, Yield)
VALUES
	('BELIEF_PILGRIMAGE', 'YIELD_CULTURE', 25),
	('BELIEF_PILGRIMAGE', 'YIELD_FOOD', 25);

INSERT INTO Belief_YieldFromForeignSpread
	(BeliefType, YieldType, Yield)
VALUES
	('BELIEF_TITHE', 'YIELD_TOURISM', 15),
	('BELIEF_TITHE', 'YIELD_CULTURE', 15);

INSERT INTO Belief_YieldFromConquest
	(BeliefType, YieldType, Yield)
VALUES
	('BELIEF_INTERFAITH_DIALOGUE', 'YIELD_GREAT_GENERAL_POINTS', 25),
	('BELIEF_INTERFAITH_DIALOGUE', 'YIELD_GREAT_ADMIRAL_POINTS', 25),
	('BELIEF_INTERFAITH_DIALOGUE', 'YIELD_FAITH', 100),
	('BELIEF_INTERFAITH_DIALOGUE', 'YIELD_GOLDEN_AGE_POINTS', 100);

INSERT INTO Belief_YieldFromPolicyUnlock
	(BeliefType, YieldType, Yield)
VALUES
	('BELIEF_CHURCH_PROPERTY', 'YIELD_FAITH', 5),
	('BELIEF_CHURCH_PROPERTY', 'YIELD_SCIENCE', 5),
	('BELIEF_CHURCH_PROPERTY', 'YIELD_GOLD', 5);

INSERT INTO Belief_YieldFromEraUnlock
	(BeliefType, YieldType, Yield)
VALUES
	('BELIEF_INITIATION_RITES', 'YIELD_FAITH', 20),
	('BELIEF_INITIATION_RITES', 'YIELD_SCIENCE', 20),
	('BELIEF_INITIATION_RITES', 'YIELD_GOLD', 20),
	('BELIEF_INITIATION_RITES', 'YIELD_CULTURE', 20),
	('BELIEF_INITIATION_RITES', 'YIELD_FOOD', 20),
	('BELIEF_INITIATION_RITES', 'YIELD_PRODUCTION', 20),
	('BELIEF_INITIATION_RITES', 'YIELD_TOURISM', 20),
	('BELIEF_INITIATION_RITES', 'YIELD_GOLDEN_AGE_POINTS', 20);

INSERT INTO Belief_YieldFromConversion
	(BeliefType, YieldType, Yield)
VALUES
	('BELIEF_PAPAL_PRIMACY', 'YIELD_SCIENCE', 30),
	('BELIEF_PAPAL_PRIMACY', 'YIELD_PRODUCTION', 30);

INSERT INTO Belief_YieldFromWLTKD
	(BeliefType, YieldType, Yield)
VALUES
	('BELIEF_WORLD_CHURCH', 'YIELD_FAITH', 15),
	('BELIEF_WORLD_CHURCH', 'YIELD_GOLD', 15),
	('BELIEF_WORLD_CHURCH', 'YIELD_CULTURE', 15);

INSERT INTO Belief_BuildingClassFaithPurchase
	(BeliefType, BuildingClassType)
VALUES
	('BELIEF_CEREMONIAL_BURIAL', 'BUILDINGCLASS_MAUSOLEUM'),
	('BELIEF_PEACE_LOVING', 'BUILDINGCLASS_HEAVENLY_THRONE'),
	('BELIEF_INTERFAITH_DIALOGUE', 'BUILDINGCLASS_GREAT_ALTAR'),
	('BELIEF_CHURCH_PROPERTY', 'BUILDINGCLASS_DIVINE_COURT'),
	('BELIEF_TITHE', 'BUILDINGCLASS_RELIQUARY'),
	('BELIEF_INITIATION_RITES', 'BUILDINGCLASS_SACRED_GARDEN'),
	('BELIEF_PAPAL_PRIMACY', 'BUILDINGCLASS_HOLY_COUNCIL'),
	('BELIEF_PILGRIMAGE', 'BUILDINGCLASS_APOSTOLIC_PALACE'),
	('BELIEF_WORLD_CHURCH', 'BUILDINGCLASS_GRAND_OSSUARY');


UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_PEACE_LOVING'
WHERE Type = 'BELIEF_PEACE_LOVING' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_INTERFAITH_DIALOGUE'
WHERE Type = 'BELIEF_INTERFAITH_DIALOGUE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_CEREMONIAL_BURIAL'
WHERE Type = 'BELIEF_CEREMONIAL_BURIAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_CHURCH_PROPERTY'
WHERE Type = 'BELIEF_CHURCH_PROPERTY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_TITHE'
WHERE Type = 'BELIEF_TITHE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_INITIATION_RITES'
WHERE Type = 'BELIEF_INITIATION_RITES' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_PAPAL_PRIMACY'
WHERE Type = 'BELIEF_PAPAL_PRIMACY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_PILGRIMAGE'
WHERE Type = 'BELIEF_PILGRIMAGE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_WORLD_CHURCH'
WHERE Type = 'BELIEF_WORLD_CHURCH' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );
