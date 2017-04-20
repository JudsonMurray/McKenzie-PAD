CREATE TABLE monsterclass.MonsterClass ( 
	MonsterID            int NOT NULL   ,
	MonsterName          varchar(100) NOT NULL   ,
	Rarity               int NOT NULL   ,
	AttributeOne         varchar(50) NOT NULL   ,
	AttributeTwo         varchar(50)    ,
	MonsterTypeOne       varchar(50) NOT NULL   ,
	MonsterTypeTwo       varchar(50)    ,
	MonsterTypeThree     varchar(50)    ,
	MaxExperience        int NOT NULL   ,
	MaxLevel             int NOT NULL   ,
	MonsterCost          int NOT NULL   ,
	ASListID             int    ,
	LeaderSkillName      varchar(100)    ,
	ActiveSkillName      varchar(100)    ,
	MaxATK               int NOT NULL   ,
	MinATK               int NOT NULL   ,
	GrowthRateATK        int NOT NULL   ,
	MaxHP                int NOT NULL   ,
	MinHP                int NOT NULL   ,
	GrowthRateHP         int NOT NULL   ,
	MaxRCV               int NOT NULL   ,
	MinRCV               int NOT NULL   ,
	GrowthRateRCV        int NOT NULL   ,
	MaxCoinValue         int NOT NULL   ,
	MinCoinValue         int NOT NULL   ,
	MaxExperienceValue   int NOT NULL   ,
	MinExperienceValue   int NOT NULL   ,
	MonsterPointValue    int NOT NULL   ,
	LSSlots              int NOT NULL CONSTRAINT defo_MonsterClass_LSSlots DEFAULT 5  ,
	CONSTRAINT Pk_MonsterClass PRIMARY KEY ( MonsterID )
 ) engine=InnoDB;

CREATE  INDEX idx_MonsterClass ON monsterclass.MonsterClass ( AttributeOne );

CREATE  INDEX idx_MonsterClass_0 ON monsterclass.MonsterClass ( AttributeTwo );

CREATE  INDEX idx_MonsterClass_1 ON monsterclass.MonsterClass ( MonsterTypeOne );

CREATE  INDEX idx_MonsterClass_2 ON monsterclass.MonsterClass ( MonsterTypeTwo );

CREATE  INDEX idx_MonsterClass_3 ON monsterclass.MonsterClass ( MonsterTypeThree );

CREATE  INDEX idx_MonsterClass_4 ON monsterclass.MonsterClass ( ActiveSkillName );

CREATE  INDEX idx_MonsterClass_5 ON monsterclass.MonsterClass ( LeaderSkillName );

CREATE  INDEX idx_MonsterClass_6 ON monsterclass.MonsterClass ( ASListID );

ALTER TABLE monsterclass.MonsterClass ADD CONSTRAINT fk_monsterclass_attribute1 FOREIGN KEY ( AttributeOne ) REFERENCES monsterclass.Attribute( AttributeName ) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE monsterclass.MonsterClass ADD CONSTRAINT fk_monsterclass_attribute2 FOREIGN KEY ( AttributeTwo ) REFERENCES monsterclass.Attribute( AttributeName ) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE monsterclass.MonsterClass ADD CONSTRAINT fk_monsterclass_monstertype1 FOREIGN KEY ( MonsterTypeOne ) REFERENCES monsterclass.MonsterType( MonsterTypeName ) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE monsterclass.MonsterClass ADD CONSTRAINT fk_monsterclass_monstertype2 FOREIGN KEY ( MonsterTypeTwo ) REFERENCES monsterclass.MonsterType( MonsterTypeName ) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE monsterclass.MonsterClass ADD CONSTRAINT fk_monsterclass_monstertype3 FOREIGN KEY ( MonsterTypeThree ) REFERENCES monsterclass.MonsterType( MonsterTypeName ) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE monsterclass.MonsterClass ADD CONSTRAINT fk_monsterclass_activeskill FOREIGN KEY ( ActiveSkillName ) REFERENCES monsterclass.ActiveSkill( ActiveSkillName ) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE monsterclass.MonsterClass ADD CONSTRAINT fk_monsterclass_leaderskill FOREIGN KEY ( LeaderSkillName ) REFERENCES monsterclass.LeaderSkill( LeaderSkillName ) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE monsterclass.MonsterClass ADD CONSTRAINT fk_monsterclass FOREIGN KEY ( ASListID ) REFERENCES monsterclass.AwokenSkillList( ASListID ) ON DELETE NO ACTION ON UPDATE NO ACTION;

