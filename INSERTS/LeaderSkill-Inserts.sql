/*	
	Name:	 Ryan Breau
	Date:	 04/19/17
	Purpose: Inserts for the leader skills of the monsters added by the memebers of the class

	V.1- Exclusive leader skills from everyone's monsters added
*/


TRUNCaTE table SWTS1103.dbo.LeaderSkill

--Ryan
insert into SWTS1103.dbo.LeaderSkill(LeaderSkillName, LeaderSkillDescription) values
('Evil Sound''s Reverberation', '2.5x ATK with 3 Att.(3x for 4 Att.); 4x ATK & reduces dmg with a cross of 5 Heal Orbs'),
('Light of Scathach', '3x ATK for Balanced Type'),
('Hermit Soul', '2x ATK & RCV for Wood Att.; 3x ATK when Wood & Water attack at once'),
('Hermit Eyes', 'Wood attribute cards ATK x2, RCV x2; all attribute cards ATK x3.5 when reaching Wood & Water combos'),
('Ancient Dragon Tribe''s Quintessence','2.5x ATK & RCV for Dragon & Balanced Types; 1.5x ATK when erasing 4+ linked Wood Orbs'),
('Prosperity God''s Cadence','2.5x ATK & 1.5x RCV for Wood Att.; 2x ATK with 2 Wood combos, 3x ATK with 3+ combos'),
('Demonic Strike', '3x ATK when erasing 5 Orbs with 1+ enhanced; ATK increases with 6+ combos up to 2.5x');

--Zach
insert into SWTS1103.dbo.LeaderSkill(LeaderSkillName, LeaderSkillDescription) values
('Death Sea Holy Water','ATK x3 when simultaneously clearing 5 connected Water or Dark Orbs. ATK x0.5 for each additional Orb, up to ATK x6 at 11 connected Orbs. God type cards RCV x1.5'),
('I''ll bring this to an end!','Attacker type cards HP x1.5, RCV x1.5. All attribute cards ATK x2 on the turn a skill is used'),
('Iron Wall Lore','20% all damage reduction'),
('Demon''s Sacred Talisman','Dragon & Attacker type Cards ATK x3.5, RCV x1.5'),
('Demon''s Dragon Talisman','Dragon & Attacker type cards ATK x3.5, RCV x1.5. All attribute cards ATK x2 when reaching 7 combos or above'),
('Dark Steel Star of Libra','Machine type cards ATK x1.5, RCV x1.5. Matched attribute ATK x4 when matching exactly 5 connected orbs with at least 1 enhanced orb'),
('Game of the Dead','Dark attribute cards HP x1.35, RCV x1.35. All attribute cards ATK x3 when attacking with 3 of the following orb types: Fire, Water, Wood, Light, Dark & Heart'),
('Enjoy your holidays...','God & Machine type cards ATK x1.3, RCV x1.3. Matched attribute ATK x5 when matching exactly 5 connected orbs with at least 1 enhanced orb'),
('Magic Dragon Tribe''s Determination','Dragon & Attacker type cards ATK x2.5, RCV x2.5. All attribute cards ATK x1.5 on the turn a skill is used');

--Elie
insert into SWTS1103.dbo.LeaderSkill(LeaderSkillName, LeaderSkillDescription) values
('Dark Power','Dark attribute cards ATK x1.5'),
('Power of Moondragon','Dark attribute cards ATK x2, RCV x2'),
('Dance of the Crimson Heaven','All attribute cards ATK x4 when attacking with Fire, Wood & Light orb types at the same time'),
('Grace of Water','Water attribute cards HP x2.5'),
('Nirvana Soul','Wood attribute & God type cards HPx2, ATK x2'),
('Dawn of a Dark Age','Attacker type cards HP x1.35, ATK x3'),
('Dispelling Circle','Attacker type cards ATK x3. Heal RCV x5 as HP after every orbs elimination'),
('Twin Sorcerous Curse - DK / Wd','Dark attribute cards ATK x2.5. Wood attribute cards ATK x1.4. ATK x3.5 if both attributes are met'),
('Rumbling Firedragon''Bravery','Dragon type cards RCV x1.5. Fire attribute cards ATK x3'),
('Nirvana Blade','Wood attribute & God type cards HP x2, ATK x2. All attribute cards ATK x2 when reaching Wood & Light combos');

--Kyle
insert into SWTS1103.dbo.LeaderSkill(LeaderSkillName, LeaderSkillDescription) values
('Mechanical Dark Star of Gemini','Changes Jammers, Poison & Heal Orbs to Dark Orbs; other allies'' skills charged by 1 turn'),
('Rune of Fate','2.5x ATK for God Type'),
('Song of Valhalla','2.5x ATK & 1.5x HP for Fire Att. and God Type'),
('Dawn of Valhalla','2x HP & 2.5x ATK for Fire Att. & God Type; 1.5x ATK erasing 4+ linked Fire Orbs'),
('Axiom of Sustainment','ATK increases with 5+ combos, up to 6x ATK; bonus attack of 30x ATK when matching Orbs'),
('Magic Dragon Tribe''s Determination','Dragon & Attacker type cards ATK x2.5, RCV x2.5. All attribute cards ATK x1.5 on the turn a skill is used'),
('The Armiger','1.5x to all stats, but unable to erase 3 Orbs or less; ATK increases with 3+ combos, up to 7x'),
('Sight of Valhalla','2.5x ATK & RCV for Fire Att. & God Type; 2.5x ATK when erasing 6+ linked Fire Orbs'),
('Soul of the Darkdragon','	2x ATK & HP for Dragon & Devil Types; 3.5x ATK when Light & Dark attack at once');

--Billy
insert into SWTS1103.dbo.LeaderSkill(LeaderSkillName, LeaderSkillDescription) values
('The Queen''s Lucky Star','ATK x2 when simultaneously clearing 4 connected Water orbs. ATK x0.5 for each additional orb, up to ATK x4 at 8 connected orb'),
('Spirit of the Princess','ATK x2 when simultaneously clearing 4 connected Water orbs. ATK x0.5 for additional orb, up to ATK x5 at 10 connected orb'),
('Eternal Dragon Pact - Fragrem','Light attribute cards HP x2, ATK x2.5. Light attribute cards ATK x1.5 on the turn a skill is used');