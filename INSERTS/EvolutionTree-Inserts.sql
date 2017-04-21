-- Evolution Tree inserts--
--Intial Creation by William Gale--
--April 21, 2017

--V 1.0 --Billy's EvoTree Added
--V 1.0 --Kyle's EvoTree Added

--Billy's
INSERT INTO SWTS1103.dbo.EvolutionTree
(NextMonsterID, BaseMonsterID, EvoMaterialOneID, EvoMaterialTwoID, EvoMaterialThreeID, EvoMaterialFourID, EvoMaterialFiveID, MinLevel, Devolveable, LevelReset)
VALUES
-- Evolution Tree for Orange DragonBound, Saria
(2441, 2440, 150, 321, 174, 246, 251, 50, 0, 1),
-- Evolution Tree for Andromeda
(1068, 1067, 148, 321, 172, 247, 247, 50, 0, 1),
(1733, 1068, 321, 1294, 1294, 247, 251, 1, 1, 0),
(2658, 1733, 1324, 148, 1294, 1326, 1326, 1, 1, 0)

--Kyle's
INSERT INTO SWTS1103.dbo.EvolutionTree
(NextMonsterID, BaseMonsterID, EvoMaterialOneID, EvoMaterialTwoID, EvoMaterialThreeID, EvoMaterialFourID, EvoMaterialFiveID, MinLevel, Devolveable, LevelReset)
Values
--Phantom God, Odin Tree
(1108, 1107, 321, 171, 234, 246, 251, 50, 0,1), 
(2179, 1108, 147, 321, 246, 250, 251, 1, 1,0),
(3392, 1108, 147, 1085, 1085, 1085, 246, 1, 1, 0),
--Castor Tree
(2424,2423, 151, 175, 250, 247, 251, 50, 0, 1),
(3061,2424, 151, 1176, 234, 250, 247, 1, 1, 0),
(3062, 2424,151, 1176, 234, 250, 249, 1, 1, 0)

select * from EvolutionTree