-- Evolution Tree inserts--
--Intial Creation by William Gale--
--April 21, 2017
INSERT INTO SWTS1103.dbo.EvolutionTree
(NextMonsterID, BaseMonsterID, EvoMaterialOneID, EvoMaterialTwoID, EvoMaterialThreeID, EvoMaterialFourID, EvoMaterialFiveID, MinLevel, Devolveable, LevelReset)
VALUES
-- Evolution Tree for Orange DragonBound, Saria
(2441, 2440, 150, 321, 174, 246, 251, 50, 0, 1),
-- Evolution Tree for Andromeda
(1068, 1067, 148, 321, 172, 247, 247, 50, 0, 1),
(1733, 1068, 321, 1294, 1294, 247, 251, 1, 1, 0),
(2658, 1733, 1324, 148, 1294, 1326, 1326, 1, 1, 0)