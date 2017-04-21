-- Evolution Tree inserts--
--Intial Creation by William Gale--
--April 21, 2017

--V 1.0 --Billy's EvoTree Added
--V 1.0 --Kyle's EvoTree Added

INSERT INTO SWTS1103.dbo.EvolutionTree
(NextMonsterID, BaseMonsterID, EvoMaterialOneID, EvoMaterialTwoID, EvoMaterialThreeID, EvoMaterialFourID, EvoMaterialFiveID, MinLevel, Devolveable, LevelReset)
VALUES
-- Evolution Tree for Orange DragonBound, Saria
(2441, 2440, 150, 321, 174, 246, 251, 50, 0, 1),
-- Evolution Tree for Andromeda
(1068, 1067, 148, 321, 172, 247, 247, 50, 0, 1),
(1733, 1068, 321, 1294, 1294, 247, 251, 1, 1, 0),
(2658, 1733, 1324, 148, 1294, 1326, 1326, 1, 1, 0)

INSERT INTO SWTS1103.dbo.EvolutionTree
(NextMonsterID, BaseMonsterID, EvoMaterialOneID, EvoMaterialTwoID, EvoMaterialThreeID, EvoMaterialFourID, EvoMaterialFiveID, MinLevel, Devolveable, LevelReset)
Values
--Phantom God, Odin Tree
(1107, 1108, 321, 171, 234, 246, 251, 50, 0,1), 
(1108, 2179, 147, 321, 246, 250, 251, 1, 1,0),
(1108, 3392, 147, 1085, 1085, 1085, 246, 1, 1, 0),
--Castor Tree
(2423, 2424, 151, 175, 250, 247, 251, 50, 0, 1),
(2424, 3061, 151, 1176, 234, 250, 247, 1, 1, 0),
(2424, 3062, 151, 1176, 234, 250, 249, 1, 1, 0)

select * from EvolutionTree