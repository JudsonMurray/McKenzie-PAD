-- PAD MONSTER INSERT SCRIPT --
-- Developes: WILLIAM GALE, ZACHARY BLUE --
-- Date of Creation April, 19 2017 --

truncate table SWTS1103.dbo.MonsterClass

INSERT INTO SWTS1103.dbo.MonsterClass ("MonsterID", "MonsterName", "Rarity", "AttributeOne", "AttributeTwo",
 "MonsterTypeOne", "MonsterTypeTwo", "MonsterTypeThree", "MaxExperience", "MaxLevel", "MonsterCost", "AwokenSkillList", "LeaderSkill", "ActiveSkill", "MaxATK", "MinATK", "GrowthRateATK", "MaxHP", "MinHP", "GrowthRateHP", "MaxRCV", "MinRCV",
    "GrowthRateRCV", "MaxCoinValue", "MinCoinValue", "MaxExperienceValue", "MinExperienceValue", "MonsterPointValue") VALUES 
(1, 'Tyrra', 2, 'Fire', NULL, 'Dragon', NULL, NULL, 505, 5, 2, NULL, 'Fire Power', 'Heat Breath', 71, 57, 1, 144, 52, 1, 13, 8, 1, 350, 70, 500, 100, 1),
(5, 'Plessie', 2, 'Water', NULL, 'Dragon', NULL, NULL, 505, 5, 2, NULL, 'Water Power', 'Cold Breath', 62, 42, 1, 155, 62, 1, 18, 11, 1, 350, 70, 500, 100, 1),
(9, 'Brachy', 2, 'Wood', NULL, 'Dragon', NULL, NULL, 505, 5, 2, NULL, 'Wood Power', 'Wind Breath', 59, 32, 1, 168, 67, 1, 22, 13, 1, 350, 70, 500, 100, 1),
(40, 'Woodsie', 1, 'Wood', NULL, 'Balanced', NULL, NULL, 2556, 10, 1, NULL,NULL, NULL, 90, 36, 0.7, 205, 41, 0.7, 37, 11, 0.7, 500, 50, 500, 50, 1),
(36, 'Flamie', 1, 'Fire', NULL, 'Balanced', NULL, NULL, 2556, 10, 1, NULL, NULL, NULL, 105, 42, 0.7, 195, 39, 0.7, 30, 9, 0.7, 500, 50, 500, 50, 1),
(38, 'Bubblie', 1, 'Water', NULL, 'Balanced', NULL, NULL, 2556, 10, 1, NULL, NULL, NULL, 93, 37, 0.7, 215, 43, 0.7, 30, 9, 0.7, 500, 50, 500, 50, 1),
(42, 'Shynee', 1, 'Light', NULL, 'Balanced', NULL, NULL, 2556, 10, 1, NULL, NULL, NULL, 98, 39, 0.7, 195, 39, 0.7, 33, 10, 0.7, 500, 50, 500, 50, 1),
(44, 'Baddie', 1, 'Dark', NULL, 'Balanced', NULL, NULL, 2556, 10, 1, NULL, NULL, NULL, 108, 43, 0.7, 205, 41, 0.7, 27, 8, 0.7, 500, 50, 500, 50, 1),
(152, 'Dragon Seed', 2, 'Wood', NULL, 'Evo Material', NULL, NULL, 0, 1, 1, NULL, NULL, NULL, 10, 10, 1, 10, 10, 1, 10, 10, 1, 50, 50, 75, 75, 1),
(153, 'Dragon Plant', 3, 'Wood', NULL, 'Evo Material', NULL, NULL, 0, 1, 1, NULL, NULL, NULL, 50, 50, 1, 50, 50, 1, 50, 50, 1, 200, 200, 100, 100, 1),
(154, 'Dragon Flower', 4, 'Wood', NULL, 'Evo Material', NULL, NULL, 0, 1, 1, NULL, NULL, NULL, 100, 100, 1, 100, 100, 1, 100, 100, 1, 500, 500, 125, 125, 1),
(161, 'Red Evolution Mask', 1, 'Fire', NULL, 'Evo Material', NULL, NULL, 0, 1, 1, NULL, NULL, NULL, 50, 50, 1, 10, 10, 1, 1, 1, 1, 250, 250, 50, 50, 1),
(162, 'Blue Evolution Mask', 1, 'Water', NULL, 'Evo Material', NULL, NULL, 0, 1, 1, NULL, NULL, NULL, 50, 50, 1, 10, 10, 1, 1, 1, 1, 250, 250, 50, 50, 1),
(163, 'Green Evolution Mask', 1, 'Wood', NULL, 'Evo Material', NULL, NULL, 0, 1, 1, NULL, NULL, NULL, 50, 50, 1, 10, 10, 1, 1, 1, 1, 250, 250, 50, 50, 1),
(164, 'Yellow Evolution Mask', 1, 'Light', NULL, 'Evo Material', NULL, NULL, 0, 1, 1, NULL, NULL, NULL, 50, 50, 1, 10, 10, 1, 1, 1, 1, 250, 250, 50, 50, 1),
(165, 'Purple Evolution Mask', 1, 'Dark', NULL, 'Evo Material', NULL, NULL, 0, 1, 1, NULL, NULL, NULL, 50, 50, 1, 10, 10, 1, 1, 1, 1, 250, 250, 50, 50, 1),
(166, 'Crimson Demon Mask', 3, 'Fire', NULL, 'Evo Material', NULL, NULL, 0, 1, 1, NULL, NULL, NULL, 100, 100, 1, 20, 20, 1, 1, 1, 1, 500, 500, 100, 100, 1),
(167, 'Indigo Demon Mask', 3, 'Water', NULL, 'Evo Material', NULL, NULL, 0, 1, 1, NULL, NULL, NULL, 100, 100, 1, 20, 20, 1, 1, 1, 1, 500, 500, 100, 100, 1),
(168, 'Azure Demon Mask', 3, 'Wood', NULL, 'Evo Material', NULL, NULL, 0, 1, 1, NULL, NULL, NULL, 100, 100, 1, 20, 20, 1, 1, 1, 1, 500, 500, 100, 100, 1),
(169, 'Golden Demon Mask', 3, 'Light', NULL, 'Evo Material', NULL, NULL, 0, 1, 1, NULL, NULL, NULL, 100, 100, 1, 20, 20, 1, 1, 1, 1, 500, 500, 100, 100, 1),
(170, 'Violet Demon Mask', 3, 'Dark', NULL, 'Evo Material', NULL, NULL, 0, 1, 1, NULL, NULL, NULL, 100, 100, 1, 20, 20, 1, 1, 1, 1, 500, 500, 100, 100, 1),
(171, 'Divine Carmine Mask', 5, 'Fire', NULL, 'Evo Material', NULL, NULL, 0, 1, 1, NULL, NULL, NULL, 200, 200, 1, 40, 40, 1, 1, 1, 1, 1000, 1000, 2000, 2000, 1),
(172, 'Divine Indigo Mask', 5, 'Water', NULL, 'Evo Material', NULL, NULL, 0, 1, 1, NULL, NULL, NULL, 200, 200, 1, 40, 40, 1, 1, 1, 1, 1000, 1000, 2000, 2000, 1),
(173, 'Divine Jade Mask', 5, 'Wood', NULL, 'Evo Material', NULL, NULL, 0, 1, 1, NULL, NULL, NULL, 200, 200, 1, 40, 40, 1, 1, 1, 1, 1000, 1000, 2000, 2000, 1),
(174, 'Divine Gold Mask', 5, 'Light', NULL, 'Evo Material', NULL, NULL, 0, 1, 1, NULL, NULL, NULL, 200, 200, 1, 40, 40, 1, 1, 1, 1, 1000, 1000, 2000, 2000, 1),
(175, 'Divine Onyx Mask', 5, 'Dark', NULL, 'Evo Material', NULL, NULL, 0, 1, 1, NULL, NULL, NULL, 200, 200, 1, 40, 40, 1, 1, 1, 1, 1000, 1000, 2000, 2000, 1),
(1294, 'Ancient Blue Sacred Mask', 6, 'Water', NULL, 'Evo Material', NULL, NULL, 0, 1, 99, NULL, NULL, 'Purging Thunderdrums', 400, 400, 1, 400, 400, 1, 0, 0, 1, 1605, 1605, 3938, 3938, 1),
(1295, 'Ancient Green Sacred Mask', 6, 'Wood', NULL, 'Evo Material', NULL, NULL, 0, 1, 99, NULL, NULL, 'Wild Wind', 400, 400, 1, 400, 400, 1, 0, 0, 1, 1605, 1605, 3938, 3938, 1),
(234, 'Mystic Mask', 5, 'Light', NULL, 'Evo Material', NULL, NULL, 0, 1, 1, NULL, NULL, 'Summon Light', 300, 300, 1, 300, 300, 1, 300, 300, 1, 120, 120, 10000, 10000, 1),
(1067, 'Andromeda', 6, 'Water', NULL, 'God', NULL, NULL, 707107, 50, 15, NULL, 'The Queen''s Lucky Star', 'The Sacred Blue Chains', 702, 413, 1, 1493, 622, 1, 320, 188, 1, 16500, 330, 37500, 750, 5000),
(1068, 'Starsea Goddess, Andromeda', 6, 'Water', 'Water', 'God', NULL, NULL, 4000000, 99, 25, NULL, 'The Queen''s Lucky Star', 'The Sacred Blue Chains', 1138, 632, 1, 2985, 1194, 1, 518, 288, 1, 49005, 495, 115088, 1163, 5000),
(1733, 'Blue Chain Starsea Goddess, Andromeda', 7, 'Water', 'Water', 'God', NULL, NULL, 4000000, 99, 35, NULL, 'The Queen''s Lucky Star', 'The Sacred Blue Chains', 1238, 632, 1, 2985, 1194, 1, 578, 288, 1, 65340, 660, 155925, 1575, 5000),
(2658, 'Adored Starsea Goddess, Andromeda', 8, 'Water', 'Water', 'God', 'Healer', 'Physical', 4000000, 99, 45, NULL, 'Spirit of the Princess', 'The Sacred Blue Chains', 1238, 632, 1, 3985, 1194, 1, 578, 288, 1, 81675, 825, 196763, 825, 5000),
(2441, 'Judging-Claw Orange Dragonbound, Saria', 6, 'Light', 'Fire', 'Dragon', 'Physical', NULL, 5000000, 99, 50, 2441,  'Eternal Dragon Pact - Fragrem',  'Shine Flare Ring', 1518, 607, 1, 4118, 1647, 1, 120, 48, 1, 86130, 870, 207900, 2100, 15000)



-- Kyle Insert Style
insert into SWTS1103.dbo.MonsterClass 
(MonsterID,
MonsterName,
Rarity,
MonsterCost,
"MaxExperience",
"MaxLevel",
MaxHP,
MaxATK,
MaxRCV,
MinHP,
MinATK,
MinRCV,
"MinCoinValue",
"MaxCoinValue",
"MonsterPointValue",
AttributeOne,
AttributeTwo,
"MonsterTypeOne",
"MonsterTypeTwo",
"MonsterTypeThree",
LeaderSkill,
ActiveSkill, 
"AwokenSkillList", 
GrowthRateATK,
GrowthRateRCV,
GrowthRateHP,
"MaxExperienceValue", 
"MinExperienceValue")
Values
(1107, 'Phantom God, Odin', 6, 30, 4000000, 50, 2306, 1513, 58, 1098, 1164, 29, 570, 28500, 50000, 'Fire', NULL, 'God', NULL, NULL, 'Rune of Fate', 'Destroying Lance, Gungnir', 1107, 0, 0, 0, 67500, 1350),
(1108, 'Awoken Phantom God, Odin', 7, 50, 4000000, 99, 4059, 2043, 154, 1845, 1362, 52, 885, 87615, 50000, 'Fire', 'Dark', 'God', NULL, NULL, 'Song of Valhalla', 'Destroying Lance, Gungnir', 1108, 0, 0, 0, 211613, 2138),
(2179, 'God of the Destroying Lance, Odin', 8, 60, 4000000, 99, 4189, 2143, 154, 1845, 1362, 52, 1050, 103950, 50000, 'Fire', 'Dark', 'God', 'Attacker', NULL, 'Dawn of Valhalla', 'Destroying Lance, Gungnir', 2179, 0, 0, 0, 252450, 2550),
(2423, 'Castor', 5, 15, 707107, 50, 1291, 924, 35, 538, 385, 14, 330, 16500, 5000, 'Dark', NULL, 'Machine', 'God', NULL, 'Mechanical Dark Star of Gemini', 'Astrocharge - Dark', NULL, 0, 0, 0, 37500, 750),
(2424, 'Destruction Palm Mechanical Star God, Castor', 6, 25, 4000000, 99, 2583, 2080, 78, 1033, 832, 78, 495, 49005, 5000, 'Dark', 'Water', 'Machine', 'God', NULL, 'Mechanical Dark Star of Gemini', 'Astrocharge - Dark', 2424, 0, 0, 0, 115088, 1163),
(3061, 'Destruction Cannon Mechanical Star God, Castor', 7, 35, 4000000, 99, 2733, 2080, 170, 1033, 832, 31, 660, 65340, 5000, 'Dark', 'Water', 'Machine', 'God', NULL, 'Mechanical Dark Star of Gemini', 'Astrocharge - Dark', 3061, 0, 0, 0, 155925, 1575),
(3062, 'Destruction Blade Mechanical Star God, Castor', 7, 35, 4000000, 99, 2583, 2330, 78, 1033, 832, 31, 660, 65340, 5000, 'Dark', 'Light', 'Machine', 'God', NULL, 'Mechanical Dark Star of Gemini', 'Astrocharge - Dark', 3062, 0, 0, 0, 155925, 1575),
(3206, 'God of Awe and Fear, Vajrabhairava', 6, 30, 4000000, 99, 2805, 1840, 148, 1122, 736, 59, 570, 56430, 5000, 'Dark', 'Light', 'God', 'Attacker', NULL, 'Axiom of Sustainment', 'Divine Blessing', 3206, 0, 0, 0, 133650, 1350),
(3284, 'Dragon Caller''s Disciple, Sheena', 5, 50, 5000000, 99, 3931, 1728, 40, 1872, 823, 19, 855, 84645, 15000, 'Dark', 'Light', 'Dragon', 'Attacker', NULL, 'Magic Dragon Tribe''s Determination', 'Draco Summon - Light & Dark', 3284, 0, 0, 0, 204188, 2063),
(3305, 'The Chosen King, Noctis', 7, 22, 5000000, 99, 4038, 1877, 214, 1923, 894, 102, 465, 46035, 6000, 'Dark', 'Light', 'Physical', 'Attacker', NULL, 'The Armiger', 'Trust in me…', 3305, 0, 0, 0, 107663, 1088),
(3392, 'God of the Battlefield, Odin', 8, 60, 4000000, 99, 4969, 2493, 34, 1845, 1362, 52, 1050, 103950, 50000, 'Fire', NULL, 'God', 'Physical', NULL, 'Sight of Valhalla', 'Destroying Lance, Gungnir', 3392, 0, 0, 0, 252450, 2550),
(3450, 'Reincarnated Vritra', 8, 50, 16000000, 99, 4647, 2345, 201, 2034, 923, 56, 900, 89100, 5000, 'Dark', 'Light', 'Dragon', 'Devil', 'God', 'Soul of the Darkdragon', 'Abyssal Strike', 3450, 0, 0, 0, 215325, 2175)



<<<<<<< HEAD
insert into SWTS1103.dbo.MonsterClass (MonsterID, MonsterName, Rarity, AttributeOne, AttributeTwo, MonsterTypeOne, MonsterTypeTwo, MonsterTypeThree, "AwokenSkillList", MinHP,MinATK,MinRCV,MaxHP,MaxATK,MaxRCV,"MaxExperience", MaxLevel, MonsterCost, GrowthRateHP, GrowthRateATK, GrowthRateRCV, ActiveSkill, LeaderSkill, "MaxCoinValue", "MinCoinValue", "MaxExperienceValue", "MinExperienceValue", "MonsterPointValue") values
(2995,'Bursting Great Earl of Hell, Ronove',6,'Wood',NULL,'Devil','Machine',NULL,2995,1811,1202,296,3211,1702,696,5000000,99,40,1,1,1,'Hurricane Shout','Evil Sound''s Reverberation'),
(693,'Noble Wolf King Hero, Cu Chulainn',7,'Wood','Dark','Balanced',null,NULL,693,1613,1204,255,2987,1386,378,4000000,99,35,1,1,1,'Attack Stance - Wood','Light of Scathach'),
(2944,'Balboa',5,'Wood',NULL,'Dragon','Machine',NULL,2944,395,219,8,1012,795,135,883883,50,30,1,1,1,'Astray Mist','Hermit Soul'),
(2945,'Steel Wand MechDragon God, Balboa',6,'Wood','Water','Dragon','Machine',NULL,2945,914,623,119,3624,1524,252,5000000,99,50,1,1,1,'Astray Mist','Hermit Soul'),
(3372,'Radiant Staff Mechdragon God, Balboa',7,'Wood','Water','Dragon','Machine','God',3372,914,623,119,3824,1574,282,5000000,99,60,1,1,1,'Astray Mist','Hermit Soul'),
(3373,'Steel Chronicle Mechdragon God, Balboa',7,'Wood',NULL,'Dragon','Machine',NULL,3373,914,623,119,4524,1824,252,5000000,99,60,1,1,1,'Astray Mist','Hermit Eyes'),
(2567,'Past Life Jade Dragon Caller, Sonia',8,'Wood','Dark','Dragon','Balanced',NULL,2567,1974,600,122,3938,1820,425,5000000,99,70,1,1,1,'Draco Summoning Circle-Wd & Dk','Ancient Dragon Tribe''s Quintessence'),
(2325,'Awoken Tsukuyomi',7,'Dark','Wood','Physical','Devil',NULL,2325,1080,725,173,4372,1536,205,4000000,99,35,1.5,1.5,1.5,'World of the Gleaming Moon','Demonic Strike'),
(3070,'Divine Creator of Equilibrium, Vishnu',8,'Wood','Wood','God','Attacker','Devil',3070,1066,850,170,3565,1930,306,4000000,99,45,1,1,1,'Wood Awakening','Prosperity God''s Cadence'),
(140, 'Yomi', 5, 'Dark', Null, 'God', null, null, null, 308, 229, 53, 1350, 806, 192, 707107, 50, 15, 1.5, 1.5, 1.5, 'Change the World', 'Quick Boost'),
(141, 'Tsuku Yomi', 6, 'Dark', 'Dark', 'God', null, null, 141, 1080, 725, 173, 2772, 1336, 495, 4000000, 99, 20, 1.5, 1.5, 1.5, 'Change the World', 'God''s Hand'),
(989, 'War Deity of the Night, Tsukuyomi', 7, 'Dark', 'Light', 'God', 'Attacker', null, 989, 1080, 725, 173, 2472, 2036, 295, 4000000, 99, 30, 1.5, 1.5, 1.5, 'Change the World', 'Moonlit Divine Strike'),
(990, 'Nocturne Chanter, Tsukuyomi', 7, 'Dark', 'Dark', 'God', 'Balanced', null, 990, 1080, 725, 173, 2972, 1436, 545, 4000000, 99, 30, 1.5, 1.5, 1.5, 'Change the World', 'Chanter''s Pitch'),
(3389, 'Reincarnated Yomi', 8, 'Dark', 'Water', 'Physical', 'Devil', 'God', 3389, 2186, 768, 103, 5415, 1841, 272, 16000000, 99, 45, 1.5, 1.5, 1.5, 'World of the Gleaming Moon', 'Spirit of the Moonlight Princess');

(135,'Demon Viper Orochi',6,20,1320,793,150,3090,1150,222,5000,420,41580,99,4000000,5,'Water','Water','God',NULL,NULL,'Force','Perserverance',135,NULL,4000000),
(746,'Heavenly Guide Suzaku, Leilan',6,25,1294,918,201,3235,1377,302,5000,495,49005,99,4000000,5,'Fire','Fire','God',NULL,NULL,'Southern Seven-Star Formation','Dance of the Crimson Heaven',746,NULL,4000000),
(1131,'Guardian Dragon, Avalon Drake',6,30,1630,783,50,4075,1409,190,5000,570,56430,99,4000000,5,'Wood','Light','God','Dragon',NULL,'Aubade Gaia','Nirvana Soul',1131,NULL,4000000),
(17,'Spinon',2,2,42,62,7,129,78,12,1,70,350,5,505,5,'Dark',NULL,'Dragon',NULL,NULL,'Dark Breath','Dark Power',NULL,NULL,1500000),
(18,'Spinas',3,4,103,70,11,447,236,45,1,100,1500,15,11570,5,'Dark',NULL,'Dragon',NULL,NULL,'Dark Breath','Dark Power',NULL, NULL,1500000),
(19,'D''spinas',4,6,358,212,41,954,499,105,1,180,6300,35,106347,5,'Dark',NULL,'Dragon',NULL,NULL,'Inferno Breath','Dark Power',NULL,NULL,1500000),
(20,'Moondragon D''sinas',5,10,763,449,95,2112,1097,220,1,255,25245,99,1500000,5,'Dark',NULL,'Dragon',NULL,NULL,'Inferno Breath','Power of Darkness',20,NULL,1500000),
(484,'Moondragon Lunar D''spinas',6,15,763,449,95,2112,1097,220,1,345,34155,99,1500000,5,'Dark','Dark','Dragon',NULL,NULL,'Inferno Breath','Power of Moondragon',484,NULL,1500000),
(1919, 'Rumbling Firedragon, Armored Tyrannos', 6, 15, 777, 457, 100, 2445, 1514, 231, 1, 345, 34155, 99, 1500000, 5,'Fire', 'Water', 'Dragon', 'Attacker', NULL, 'Magma Breath', 'Rumbling Firedragon''s Bravery', 1919, NULL, 1500000),
(1758, 'Black Flying Sorceress, Goetia', 6, 17, 1403, 701, 28, 3508, 1312, 120, 5000, 375, 37125, 99, 4000000, 5,'Dark', 'Wood', 'Physical', 'Devil', NULL, 'Summon Darkness', 'Twin Sorcerous Curse - Dk/Wd', 1758, NULL, 4000000),
(920, 'Elemental of Kind Waters, Undine', 6, 26, 437, 497, 259, 2405, 1343, 469, 3000, 510, 50490, 99, 3000000, 5,'Water', 'Water', 'Balanced', NULL, NULL, 'Water Rapids Field', 'Grace of Water', 920, NULL, 3000000),
(1557, 'Dancing Flame, Amaterasu Ohkami', 7, 30, 1170, 709, 255, 2721, 1511, 502, 5000, 585, 57915, 99, 4000000, 5,'Light', 'Fire', 'God', 'Attacker', NULL, 'Shower of Healing', 'Dispelling Circle', 1557, NULL, 4000000),
(2752, 'Celestial Guardian Dragon, Avalon Drake', 7, 40, 1630, 783, 50, 4075, 1509, 250, 5000, 735, 72765, 99, 4000000, 5,'Wood', 'Light', 'God', 'Dragon', 'Machine', 'Aubade Gaia', 'Nirvana Blade', 2752, NULL, 4000000),
(1553, 'Hell-Creating Archdemon, Lucifer', 7, 40, 971, 754, 369, 2078, 1706, 554, 5000, 735, 72765, 99, 4000000, 5, 'Dark', 'Dark', 'Devil', 'Attacker',NULL, 'Evil Nova', 'Dawn of a Dark Age', 1553, NULL, 4000000);
=======
insert into SWTS1103.dbo.MonsterClass (MonsterID, MonsterName, Rarity, AttributeOne, AttributeTwo, MonsterTypeOne, MonsterTypeTwo, MonsterTypeThree, "AwokenSkillList", MinHP,MinATK,MinRCV,MaxHP,MaxATK,MaxRCV,"MaxExperience", MaxLevel, MonsterCost, GrowthRateHP, GrowthRateATK, GrowthRateRCV, ActiveSkill, LeaderSkill, "MinCoinValue", "MaxCoinValue", "MinExperienceValue", "MaxExperienceValue", "MonsterPointValue") values
(2995,'Bursting Great Earl of Hell, Ronove',6,'Wood',NULL,'Devil','Machine',NULL,2995,1811,1202,296,3211,1702,696,5000000,99,40,1,1,1,'Hurricane Shout','Evil Sound''s Reverberation', 720, 71280, 1725, 170775, 15000),
(693,'Noble Wolf King Hero, Cu Chulainn',7,'Wood','Dark','Balanced',null,NULL,693,1613,1204,255,2987,1386,378,4000000,99,35,1,1,1,'Attack Stance - Wood','Light of Scathach', 660, 65340, 1575, 155925, 15),
(2944,'Balboa',5,'Wood',NULL,'Dragon','Machine',NULL,2944,395,219,8,1012,795,135,883883,50,30,1,1,1,'Astray Mist','Hermit Soul', 555, 27750, 1313, 65625, 15000),
(2945,'Steel Wand MechDragon God, Balboa',6,'Wood','Water','Dragon','Machine',NULL,2945,914,623,119,3624,1524,252,5000000,99,50,1,1,1,'Astray Mist','Hermit Soul', 870, 86130, 2100, 207900, 15000),
(3372,'Radiant Staff Mechdragon God, Balboa',7,'Wood','Water','Dragon','Machine','God',3372,914,623,119,3824,1574,282,5000000,99,60,1,1,1,'Astray Mist','Hermit Soul', 1035, 102465, 2513, 248738, 15000),
(3373,'Steel Chronicle Mechdragon God, Balboa',7,'Wood',NULL,'Dragon','Machine',NULL,3373,914,623,119,4524,1824,252,5000000,99,60,1,1,1,'Astray Mist','Hermit Eyes', 1035, 103465, 2513, 248738, 15000),
(2567,'Past Life Jade Dragon Caller, Sonia',8,'Wood','Dark','Dragon','Balanced',NULL,2567,1974,600,122,3938,1820,425,5000000,99,70,1,1,1,'Draco Summoning Circle-Wd & Dk','Ancient Dragon Tribe''s Quintessence', 1200, 118800, 2925, 289575, 50000),
(2325,'Awoken Tsukuyomi',7,'Dark','Wood','Physical','Devil',NULL,2325,1080,725,173,4372,1536,205,4000000,99,35,1.5,1.5,1.5,'World of the Gleaming Moon','Demonic Strike', 660, 65340, 1575, 155925, 5000),
(3070,'Divine Creator of Equilibrium, Vishnu',8,'Wood','Wood','God','Attacker','Devil',3070,1066,850,170,3565,1930,306,4000000,99,45,1,1,1,'Wood Awakening','Prosperity God''s Cadence', 825, 82675, 1988, 196763, 5000),
(140, 'Yomi', 5, 'Dark', Null, 'God', null, null, null, 308, 229, 53, 1350, 806, 192, 707107, 50, 15, 1.5, 1.5, 1.5, 'Change the World', 'Quick Boost', 230, 11500, 500, 25000, 5000),
(141, 'Tsuku Yomi', 6, 'Dark', 'Dark', 'God', null, null, 141, 1080, 725, 173, 2772, 1336, 495, 4000000, 99, 20, 1.5, 1.5, 1.5, 'Change the World', 'God''s Hand', 420, 41580, 975, 96525, 5000),
(989, 'War Deity of the Night, Tsukuyomi', 7, 'Dark', 'Light', 'God', 'Attacker', null, 989, 1080, 725, 173, 2472, 2036, 295, 4000000, 99, 30, 1.5, 1.5, 1.5, 'Change the World', 'Moonlit Divine Strike', 585, 57915, 1388, 137363, 5000),
(990, 'Nocturne Chanter, Tsukuyomi', 7, 'Dark', 'Dark', 'God', 'Balanced', null, 990, 1080, 725, 173, 2972, 1436, 545, 4000000, 99, 30, 1.5, 1.5, 1.5, 'Change the World', 'Chanter''s Pitch', 585, 57915, 1388, 137363, 5000),
(3389, 'Reincarnated Yomi', 8, 'Dark', 'Water', 'Physical', 'Devil', 'God', 3389, 2186, 768, 103, 5415, 1841, 272, 16000000, 99, 45, 1.5, 1.5, 1.5, 'World of the Gleaming Moon', 'Spirit of the Moonlight Princess', 825, 81675, 1988, 196763, 5000);
>>>>>>> d539de5bc6f6f0eae7df6417edddc07c58492307
