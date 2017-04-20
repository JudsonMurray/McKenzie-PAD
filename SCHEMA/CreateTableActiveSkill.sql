CREATE TABLE monsterclass.ActiveSkill ( 
	ActiveSkillName      varchar(100) NOT NULL   ,
	ActiveSkillDesc      varchar(max) NOT NULL   ,
	ActiveSkillMaxLevel  int NOT NULL   ,
	ActiveSkillMaxCoolDown int NOT NULL   ,
	CONSTRAINT Pk_ActiveSkill PRIMARY KEY ( ActiveSkillName )
 ) engine=InnoDB;

