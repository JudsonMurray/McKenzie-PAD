/*
Name:	Kyle Gunton
DAte:	2017-04-19
Purpose:Mapping awoken skills by monster ID
*/

--Version 1.0

use SWTS1103;
--delete from SWTS1103.dbo.AwokenSkillList
insert into SWTS1103.dbo.AwokenSkillList (
ASListID, AwokenSkillOne, AwokenSkillTwo, AwokenSkillThree, AwokenSkillFour,
AwokenSkillFive, AwokenSkillSix, AwokenSkillSeven, AwokenSkillEight, AwokenSkillNine)
Values (2424, 'Enhanced Heal Orbs', 'Enhanced Heal Orbs', 'Enhanced Dark Orbs', 'Enhanced Dark Orbs', NULL, NULL, NULL, NULL, NULL),
(3061, 'Enhanced Heal Orbs', 'Enhanced Heal Orbs', 'Enhanced Dark Orbs', 'Enhanced Dark Orbs', 'Resistance-Skill Bind', 'Resistance-Skill Bind', 'Skill Boost', NULL, NULL),
(3062, 'Enhanced Heal Orbs', 'Enhanced Heal Orbs', 'Enhanced Dark Orbs', 'Enhanced Dark Orbs', 'Resistance-Skill Bind', 'Resistance-Skill Bind', 'Skill Boost', 'Skill Boost', 'God Killer'),
(3305, 'Two-Pronged Attack', 'Two-Pronged Attack', 'Resistance-Skill Bind', 'Extend Time', 'Extend Time', 'Extend Time', 'Skill Boost', 'Skill Boost', 'Devil Killer'),
(3450, 'Enhanced Dark Orbs', 'Skill Boost', 'Enhanced Dark Orbs', 'Resistance-Skill Bind', 'Enhanced Dark Orbs', 'Skill Boost', 'Enhanced Dark Orbs', 'Extend Time', 'God Killer'),
(3284, 'Enhanced Dark Orbs', 'Enhanced Dark Orbs', 'Skill Boost', 'Physical Killer', 'Machine Killer', NULL, NULL, NULL, NULL),
(3206, 'Two-Pronged Attack', 'Extend Time', 'Skill Boost', 'Skill Boost', 'Resistance-Skill Bind', 'Multi Boost', NULL, NULL, NULL)

