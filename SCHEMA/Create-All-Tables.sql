-- MASTER TABLE CREATION SCRIPT --
-- Created By Elie and billy.--

--MonsterType Table
if OBJECT_ID('SWTS1103.dbo.EvolutionTree', 'U') is not null
 drop table EvolutionTree;
if OBJECT_ID('SWTS1103.dbo.MonsterClass', 'U') is not null
 drop table MonsterClass;
if OBJECT_ID('SWTS1103.dbo.MonsterType', 'U') is not null
 drop table MonsterType;
if OBJECT_ID('SWTS1103.dbo.Attribute', 'U') is not null
 drop table Attribute;
if OBJECT_ID('SWTS1103.dbo.ActiveSkill', 'U') is not null
 drop table ActiveSkill;
if OBJECT_ID('SWTS1103.dbo.LeaderSkill', 'U') is not null
 drop table LeaderSkill;
if OBJECT_ID('SWTS1103.dbo.AwokenSkillList', 'U') is not null
 drop table AwokenSkillList;
if OBJECT_ID('SWTS1103.dbo.AwokenSkill', 'U') is not null
 drop table AwokenSkill;


CREATE TABLE SWTS1103.dbo.MonsterType ( 
	MonsterTypeName      varchar(50) NOT NULL   ,
	CONSTRAINT Pk_MonsterType PRIMARY KEY ( MonsterTypeName )
);
GO
--Attribute Table
CREATE TABLE SWTS1103.dbo.Attribute ( 
	AttributeName        varchar(50) NOT NULL   ,
	CONSTRAINT Pk_Attribute PRIMARY KEY ( AttributeName )
);
GO
--ActiveSkill Table
CREATE TABLE SWTS1103.dbo.ActiveSkill ( 
	ActiveSkillName      varchar(100) NOT NULL   ,
	ActiveSkillDesc      varchar(max) NOT NULL   ,
	ActiveSkillMaxLevel  int NOT NULL   ,
	ActiveSkillMaxCoolDown int NOT NULL   ,
	CONSTRAINT Pk_ActiveSkill PRIMARY KEY ( ActiveSkillName )
);
GO
--LeaderSkill Table
CREATE TABLE SWTS1103.dbo.LeaderSkill ( 
	LeaderSkillName      varchar(100) NOT NULL   ,
	LeaderSKillDesc      varchar(max) NOT NULL   ,
	CONSTRAINT Pk_LeaderSkill PRIMARY KEY ( LeaderSkillName )
);
GO
--AwokenSkill Table
CREATE TABLE SWTS1103.dbo.AwokenSkill ( 
	AwokenSkillName      varchar(100) NOT NULL   ,
	AwokenSkillDesc      varchar(max) NOT NULL   ,
	CONSTRAINT Pk_AwokenSkill PRIMARY KEY ( AwokenSkillName )
);
GO
--AwokenSkillList Table
CREATE TABLE SWTS1103.dbo.AwokenSkillList ( 
	ASListID             int NOT NULL   ,
	AwokenSkillOne       varchar(100) NOT NULL   ,
	AwokenSkillTwo       varchar(100)    ,
	AwokenSkillThree     varchar(100)    ,
	AwokenSkillFour      varchar(100)    ,
	AwokenSkillFive      varchar(100)    ,
	AwokenSkillSix       varchar(100)    ,
	AwokenSkillSeven     varchar(100)    ,
	AwokenSkillEight     varchar(100)    ,
	AwokenSkillNine      varchar(100)    ,
	CONSTRAINT Pk_AwokenSkillList PRIMARY KEY ( ASListID )
 );

CREATE  INDEX idx_AwokenSkillList ON SWTS1103.dbo.AwokenSkillList ( AwokenSkillOne );
CREATE  INDEX idx_AwokenSkillList_0 ON SWTS1103.dbo.AwokenSkillList ( AwokenSkillTwo );
CREATE  INDEX idx_AwokenSkillList_1 ON SWTS1103.dbo.AwokenSkillList ( AwokenSkillThree );
CREATE  INDEX idx_AwokenSkillList_2 ON SWTS1103.dbo.AwokenSkillList ( AwokenSkillFour );
CREATE  INDEX idx_AwokenSkillList_3 ON SWTS1103.dbo.AwokenSkillList ( AwokenSkillFive );
CREATE  INDEX idx_AwokenSkillList_4 ON SWTS1103.dbo.AwokenSkillList ( AwokenSkillSix );
CREATE  INDEX idx_AwokenSkillList_5 ON SWTS1103.dbo.AwokenSkillList ( AwokenSkillSeven );
CREATE  INDEX idx_AwokenSkillList_6 ON SWTS1103.dbo.AwokenSkillList ( AwokenSkillEight );
CREATE  INDEX idx_AwokenSkillList_7 ON SWTS1103.dbo.AwokenSkillList ( AwokenSkillNine );
ALTER TABLE SWTS1103.dbo.AwokenSkillList ADD CONSTRAINT fk_awokenskilllist_awokenskill1 FOREIGN KEY ( AwokenSkillOne ) REFERENCES SWTS1103.dbo.AwokenSkill( AwokenSkillName ) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE SWTS1103.dbo.AwokenSkillList ADD CONSTRAINT fk_awokenskilllist_awokenskill2 FOREIGN KEY ( AwokenSkillTwo ) REFERENCES SWTS1103.dbo.AwokenSkill( AwokenSkillName ) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE SWTS1103.dbo.AwokenSkillList ADD CONSTRAINT fk_awokenskilllist_awokenskill3 FOREIGN KEY ( AwokenSkillThree ) REFERENCES SWTS1103.dbo.AwokenSkill( AwokenSkillName ) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE SWTS1103.dbo.AwokenSkillList ADD CONSTRAINT fk_awokenskilllist_awokenskill4 FOREIGN KEY ( AwokenSkillFour ) REFERENCES SWTS1103.dbo.AwokenSkill( AwokenSkillName ) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE SWTS1103.dbo.AwokenSkillList ADD CONSTRAINT fk_awokenskilllist_awokenskill5 FOREIGN KEY ( AwokenSkillFive ) REFERENCES SWTS1103.dbo.AwokenSkill( AwokenSkillName ) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE SWTS1103.dbo.AwokenSkillList ADD CONSTRAINT fk_awokenskilllist_awokenskill6 FOREIGN KEY ( AwokenSkillSix ) REFERENCES SWTS1103.dbo.AwokenSkill( AwokenSkillName ) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE SWTS1103.dbo.AwokenSkillList ADD CONSTRAINT fk_awokenskilllist_awokenskill7 FOREIGN KEY ( AwokenSkillSeven ) REFERENCES SWTS1103.dbo.AwokenSkill( AwokenSkillName ) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE SWTS1103.dbo.AwokenSkillList ADD CONSTRAINT fk_awokenskilllist_awokenskill8 FOREIGN KEY ( AwokenSkillEight ) REFERENCES SWTS1103.dbo.AwokenSkill( AwokenSkillName ) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE SWTS1103.dbo.AwokenSkillList ADD CONSTRAINT fk_awokenskilllist_awokenskill9 FOREIGN KEY ( AwokenSkillNine ) REFERENCES SWTS1103.dbo.AwokenSkill( AwokenSkillName ) ON DELETE NO ACTION ON UPDATE NO ACTION;
GO
--MonsterClass Table
CREATE TABLE SWTS1103.dbo.MonsterClass ( 
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
 )

CREATE  INDEX idx_MonsterClass ON SWTS1103.dbo.MonsterClass ( AttributeOne );
CREATE  INDEX idx_MonsterClass_0 ON SWTS1103.dbo.MonsterClass ( AttributeTwo );
CREATE  INDEX idx_MonsterClass_1 ON SWTS1103.dbo.MonsterClass ( MonsterTypeOne );
CREATE  INDEX idx_MonsterClass_2 ON SWTS1103.dbo.MonsterClass ( MonsterTypeTwo );
CREATE  INDEX idx_MonsterClass_3 ON SWTS1103.dbo.MonsterClass ( MonsterTypeThree );
CREATE  INDEX idx_MonsterClass_4 ON SWTS1103.dbo.MonsterClass ( ActiveSkillName );
CREATE  INDEX idx_MonsterClass_5 ON SWTS1103.dbo.MonsterClass ( LeaderSkillName );
CREATE  INDEX idx_MonsterClass_6 ON SWTS1103.dbo.MonsterClass ( ASListID );
ALTER TABLE SWTS1103.dbo.MonsterClass ADD CONSTRAINT fk_monsterclass_attribute1 FOREIGN KEY ( AttributeOne ) REFERENCES SWTS1103.dbo.Attribute( AttributeName ) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE SWTS1103.dbo.MonsterClass ADD CONSTRAINT fk_monsterclass_attribute2 FOREIGN KEY ( AttributeTwo ) REFERENCES SWTS1103.dbo.Attribute( AttributeName ) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE SWTS1103.dbo.MonsterClass ADD CONSTRAINT fk_monsterclass_monstertype1 FOREIGN KEY ( MonsterTypeOne ) REFERENCES SWTS1103.dbo.MonsterType( MonsterTypeName ) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE SWTS1103.dbo.MonsterClass ADD CONSTRAINT fk_monsterclass_monstertype2 FOREIGN KEY ( MonsterTypeTwo ) REFERENCES SWTS1103.dbo.MonsterType( MonsterTypeName ) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE SWTS1103.dbo.MonsterClass ADD CONSTRAINT fk_monsterclass_monstertype3 FOREIGN KEY ( MonsterTypeThree ) REFERENCES SWTS1103.dbo.MonsterType( MonsterTypeName ) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE SWTS1103.dbo.MonsterClass ADD CONSTRAINT fk_monsterclass_activeskill FOREIGN KEY ( ActiveSkillName ) REFERENCES SWTS1103.dbo.ActiveSkill( ActiveSkillName ) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE SWTS1103.dbo.MonsterClass ADD CONSTRAINT fk_monsterclass_leaderskill FOREIGN KEY ( LeaderSkillName ) REFERENCES SWTS1103.dbo.LeaderSkill( LeaderSkillName ) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE SWTS1103.dbo.MonsterClass ADD CONSTRAINT fk_monsterclass FOREIGN KEY ( ASListID ) REFERENCES SWTS1103.dbo.AwokenSkillList( ASListID ) ON DELETE NO ACTION ON UPDATE NO ACTION;
GO
--EvolutionTree Table
CREATE TABLE SWTS1103.dbo.EvolutionTree ( 
	NextMonsterID        int NOT NULL   ,
	BaseMonsterID        int NOT NULL   ,
	EvoMaterialIDOne     int NOT NULL   ,
	EvoMaterialIDTwo     int    ,
	EvoMaterialIDThree   int    ,
	EvoMaterialIDFour    int    ,
	EvoMaterialIDFive    int    ,
	MinLevel             int NOT NULL   ,
	Devolveable          bit NOT NULL   ,
	LevelReset           bit NOT NULL   ,
	CONSTRAINT Pk_EvolutionTree PRIMARY KEY ( NextMonsterID )
 );

CREATE  INDEX idx_EvolutionTree_1 ON SWTS1103.dbo.EvolutionTree ( EvoMaterialIDOne );
CREATE  INDEX idx_EvolutionTree_2 ON SWTS1103.dbo.EvolutionTree ( EvoMaterialIDTwo );
CREATE  INDEX idx_EvolutionTree_3 ON SWTS1103.dbo.EvolutionTree ( EvoMaterialIDThree );
CREATE  INDEX idx_EvolutionTree_4 ON SWTS1103.dbo.EvolutionTree ( EvoMaterialIDFour );
CREATE  INDEX idx_EvolutionTree_5 ON SWTS1103.dbo.EvolutionTree ( EvoMaterialIDFive );
CREATE  INDEX idx_EvolutionTree_0 ON SWTS1103.dbo.EvolutionTree ( BaseMonsterID );
ALTER TABLE SWTS1103.dbo.EvolutionTree ADD CONSTRAINT fk_evolutiontree_evomaterialid1 FOREIGN KEY ( EvoMaterialIDOne ) REFERENCES SWTS1103.dbo.MonsterClass( MonsterID ) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE SWTS1103.dbo.EvolutionTree ADD CONSTRAINT fk_evolutiontree_evomaterialid2 FOREIGN KEY ( EvoMaterialIDTwo ) REFERENCES SWTS1103.dbo.MonsterClass( MonsterID ) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE SWTS1103.dbo.EvolutionTree ADD CONSTRAINT fk_evolutiontree_evomaterialid3 FOREIGN KEY ( EvoMaterialIDThree ) REFERENCES SWTS1103.dbo.MonsterClass( MonsterID ) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE SWTS1103.dbo.EvolutionTree ADD CONSTRAINT fk_evolutiontree_evomaterialid4 FOREIGN KEY ( EvoMaterialIDFour ) REFERENCES SWTS1103.dbo.MonsterClass( MonsterID ) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE SWTS1103.dbo.EvolutionTree ADD CONSTRAINT fk_evolutiontree_evomaterialid5 FOREIGN KEY ( EvoMaterialIDFive ) REFERENCES SWTS1103.dbo.MonsterClass( MonsterID ) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE SWTS1103.dbo.EvolutionTree ADD CONSTRAINT fk_evolutiontree_monsterclass FOREIGN KEY ( BaseMonsterID ) REFERENCES SWTS1103.dbo.MonsterClass( MonsterID ) ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

--Player Table
CREATE TABLE SWTS1103.dbo.Player ( 
	PlayerID             int NOT NULL   ,
	PlayerRank           int NOT NULL   ,
	PlayerName           varchar(50)    ,
	PlayerAttribute      varchar(50)    ,
	CONSTRAINT PK__Player__4A4E74A84EEA63C2 PRIMARY KEY ( PlayerID )
 );

ALTER TABLE SWTS1103.dbo.Player 
ADD CONSTRAINT fk_PlayerAttribute_Attribute FOREIGN KEY ( PlayerAttribute ) 
REFERENCES SWTS1103.dbo.Attribute( AttributeName ) ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

--Instance Table
CREATE TABLE SWTS1103.dbo.Instance ( 
	InstanceID           int NOT NULL IDENTITY(100000,1),
	PlayerID             int NOT NULL   ,
	BaseMonsterID        int NOT NULL   ,
	PRIMARY KEY ( InstanceID )
 );

ALTER TABLE SWTS1103.dbo.Instance 
ADD CONSTRAINT FK_Instance_BaseMonsterID FOREIGN KEY ( BaseMonsterID ) 
REFERENCES SWTS1103.dbo.MonsterClass( MonsterClassID ) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE SWTS1103.dbo.Instance 
ADD CONSTRAINT FK_Instance_PlayerID FOREIGN KEY ( PlayerID ) 
REFERENCES SWTS1103.dbo.Player( PlayerID ) ON DELETE NO ACTION ON UPDATE NO ACTION;
