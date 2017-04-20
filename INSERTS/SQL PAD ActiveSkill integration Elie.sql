--NAME:		ELIE GODBOUT
--DATE:		APRIL 19 2017
--PURPOSE:	PAD ACTIVESKILL INTEGRATION QUERY - GROUP ACTIVITY

--VERSION HISTORY
--V1.0 - APRIL 19 2017
--V1.1 - APRIL 19 2017 - Added everyone's active skills to the database
--V1.2 - APRIL 20 2017 - Changed Description field to; ActiveSkillDesc and Table name ActiveSkillIntegration to; ActiveSkill

--TRUNCATE TABLE ActiveSkill

CREATE TABLE SWTS1103.dbo.ActiveSkill
(
ActiveSkillName					varchar(100) NOT NULL,
ActiveSkillDesc					varchar(max) NOT NULL,
ActiveSkillMaxLevel				int NOT NULL,
ActiveSkillCoolDown				int NOT NULL
PRIMARY KEY (ActiveSkillName)
);

--Kyle's ActiveSkills
insert into SWTS1103.dbo.ActiveSkill (ActiveSkillName, ActiveSkillDesc, ActiveSkillMaxLevel, ActiveSkillCoolDown) Values
('Astrocharge - Dark', 'Changes Jammers, Poison & Heal Orbs to Dark Orbs; other allies'' skill charged by 1 turn', 6, 12),
('Wild Wind', 'Voids damage absorption for 1 turn; other allies'' skills charged by 1 turn', 6,24),
('Summon Light', '5 Light Orbs are created at random; Light Orbs enhanced', 6, 11),
('Purging Thunderdrums', 'Removes Orb locks; changes Orbs to all Orb types & Heal',6,13),
('Destroying Lance, Gungnir', 'Inflicts 50x ATK Dark Att. attack on all enemies, plus all enemies mortally poisoned', 6,20),
('Divine Blessing', '2x ATK for Dark Att. for 3 turns; other allies'' skills charged by 1 turn', 6,20),
('Draco Summon - Light & Dark', 'Changes all Orbs to Light & Dark Orbs', 6,17),
('Trust in me�', 'Creates 4 Dark Orbs at random; adds 1 combo for 1 turn', 6,12),
('Abyssal Strike', 'The less HP you have, the more Dark dmg caused to all enemies; 2x ATK for Dark Att. for 1 turn', 5,12);

--Elie's ActiveSkills
insert into SWTS1103.dbo.ActiveSkill (ActiveSkillName, ActiveSkillDesc, ActiveSkillMaxLevel, ActiveSkillCoolDown) Values
('Southern Seven-Star Formation', 'Changes Orbs to Fire, wood & Light Orb', 7, 14),
('Force', 'Delays enemies next move for 5 turns', 6, 25),
('Aubade Gaia', 'Changes to wood & light orbs', 8, 19),
('Summon Darkness', '5 Dark Orbs are created at random; Dark Orbs enhanced', 6, 11),
('Shower of healing', 'Fully recovers HP and all bind statuses', 11, 20),
('Dark Breath', 'Inflicts 3x ATK Dark Mass Attack', 6, 10),
('Inferno Breath', '1.5x ATK for Dark Att. for 2 turns; inflicts 20x ATK Dark Att. Mass Attack', 8, 29),
--DUPLICATE('Purging Thunderdrums', 'Removes Orbs locks; changes Orbs to all Orb type & Heal', 6, 13),
--DUPLICATE('Wild Winds', 'Ignores enemy damage absorb effects for 1 turn ( does not include combo shield, attribute absorb, and damage void ). 
--Reduces cooldown of other skills by 1 turn.', 6, 24),
--DUPLICATE('Summon Light', 'Randomly spawn 5 Light orbs from non Light orbs. Enhance Light orbs. +6% per orb, up to +180% for full board.',
--6, 11),
('Magma Breath', '1.5x ATK for Fire Att. for 2 turns; inflict Fire damage equal to ATK x20 to all enemies. Affected by enemy element and defense. Fire attribute ATK x1.5 for 2 turns.', 
23, 29),
('Water Rapids Field', 'Avoid all Fire damage for 3 turns. Enhance Water orbs. +6% per orb, up to +180% for full board.',
11, 20),
('Evil Nova', 'Inflicts 150000 Dark Att. damage on Light Att. enemies; Dark Orbs enhanced.',
16, 19);

--Zach's ActiveSkills
insert into SWTS1103.dbo.ActiveSkill (ActiveSkillName, ActiveSkillDesc, ActiveSkillMaxLevel, ActiveSkillCoolDown) Values
('Defensive Stance','Halves damage for 3 turns',20,6),
('Petit Heat Breath','Inflicts a 2x ATK Fire Att. attack on all enemies',2,2),
('Guard Stance - Fire','Changes Wood Orbs to Heal Orbs',11,7),
('Ice Gift','Inflicts 30x ATK Water Att. attack on 1 enemy',13,1),
('Grimoire Sphere','Changes Orbs to Fire and Light Orbs',19,8),
('Hydra Horn', 'Mortally poisons all enemies; other allies'' skills charged by 2 turns',6, 21),
('Flare Star', '	Dark attack of 10x team''s Fire ATK on 1 enemy; creates 8 Fire Orbs at random',11, 22),
('Iron Wall Stance', 'Halves damage for 5 turns',6 ,20),
('Dimension Dance - Purple Sky', 'Changes Jammers, Poison & Water Orbs to Dark Orbs; other allies'' skills charged by 1 turn',
6, 12),
('Aero Wake - Dark', 'Changes Wood, Heal, Poison & Jammers to Dark; Dark Orbs more likely to appear for 4 turns',6, 15),
('Dark Terror Mist', '1.5x ATK for Dark Att. for 2 turns; Dark Orbs enhanced',10, 17),
('Gemini Star Road', 'Changes the leftmost column to Light Orbs & rightmost to Dark Orbs; other allies'' skills charged by 1 turn',
6, 13);
--DUPLICATE('Draco Summon - Light & Dark', 'Changes all Orbs to Light & Dark Orbs', 6,17),

--Billy's ActiveSkills
insert into SWTS1103.dbo.ActiveSkill (ActiveSkillName, ActiveSkillDesc, ActiveSkillMaxLevel, ActiveSkillCoolDown) Values
('The Sacred Blue Chains', 'Changes Fire Orbs to Water Orbs & Light Orbs to Heal Orbs; Heal Orbs enhanced',6, 13),
('Shine Flare Ring', 'Changes Orbs to Fire, Light & Heal Orbs; other allies'' skills charged by 1 turn',6, 15);

--Ryan's ActiveSkills
insert into SWTS1103.dbo.ActiveSkill (ActiveSkillName, ActiveSkillDesc, ActiveSkillMaxLevel, ActiveSkillCoolDown) Values
('Hurricane Shout', '2 non-Wood Orbs change to Heal Orbs; changes Jammers & Poison Orbs to Wood Orbs', 6, 8),
('Attack Stance - Wood', 'Changes Heal Orbs to Wood Orbs', 7, 11),
('Astray Mist', 'Voids enemies'' DEF for 1 turn; halves damage for 1 turn', 6, 16),
('Draco Summoning Circle-Wd & Dk','Changes Orbs to Wood & Dark Orbs', 8, 19),
('Wood Awakening','Wood Orbs slightly more likely to appear dor 3 turns; 2 Wood Orbs created at random', 10, 15),
('World of the Gleaming Moon','Enhances all Orbs; extends Orb move time by 5 seconds for 3 turns', 5, 12),
('Change the World','2.5x ATK for God Type for 1 turn; move Orbs freely for 10 seconds', 8, 20);

SELECT * FROM ActiveSkill