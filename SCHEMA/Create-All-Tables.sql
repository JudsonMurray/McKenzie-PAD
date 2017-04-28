-- MASTER TABLE CREATION SCRIPT --
-- Created By Elie and billy.--
--April 28 2017 - ELie - Updated the MonsterInstance Table with calculated fields
--April 28 2017 - ELie - Updated the Team table with calculated fields
--April 28 2017 - ELie - Added the Curve Table to Create-All tabels

--MonsterType Table
USE SWTS1103

if OBJECT_ID('SWTS1103.dbo.Team', 'U') is not null
 drop table Team;
if OBJECT_ID('SWTS1103.dbo.Badge', 'U') is not null
 drop table Badge;
if OBJECT_ID('SWTS1103.dbo.MonsterInstance', 'U') is not null
 drop table MonsterInstance;
if OBJECT_ID('SWTS1103.dbo.LatentSkillList', 'U') is not null
 drop table LatentSkillList;
if OBJECT_ID('SWTS1103.dbo.Player', 'U') is not null
 drop table Player;
if OBJECT_ID('SWTS1103.dbo.EvolutionTree', 'U') is not null
 drop table EvolutionTree;
if OBJECT_ID('SWTS1103.dbo.MonsterClass', 'U') is not null
 drop table MonsterClass;
 --Curve table delete
if OBJECT_ID('SWTS1103.dbo.Curve', 'U') is not null
 drop table Curve;
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
if OBJECT_ID('SWTS1103.dbo.LatentSkill', 'U') is not null
 drop table LatentSkill;

 --LatentSkill Type
CREATE TABLE SWTS1103.dbo.LatentSkill ( 
	LatentSkillName      varchar(50) NOT NULL   ,
	LatentSkillDesc      varchar(max) NOT NULL   ,
	LSSlotsReq           int NOT NULL   ,
	CONSTRAINT PK__LatentSk__FFA5BAADD751457A PRIMARY KEY ( LatentSkillName )
 );

--Monster Type
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
	MonsterClassID            int NOT NULL   ,
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
	CONSTRAINT Pk_MonsterClass PRIMARY KEY ( MonsterClassID )
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
ALTER TABLE SWTS1103.dbo.EvolutionTree ADD CONSTRAINT fk_evolutiontree_evomaterialid1 FOREIGN KEY ( EvoMaterialIDOne ) REFERENCES SWTS1103.dbo.MonsterClass( MonsterClassID ) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE SWTS1103.dbo.EvolutionTree ADD CONSTRAINT fk_evolutiontree_evomaterialid2 FOREIGN KEY ( EvoMaterialIDTwo ) REFERENCES SWTS1103.dbo.MonsterClass( MonsterClassID ) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE SWTS1103.dbo.EvolutionTree ADD CONSTRAINT fk_evolutiontree_evomaterialid3 FOREIGN KEY ( EvoMaterialIDThree ) REFERENCES SWTS1103.dbo.MonsterClass( MonsterClassID ) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE SWTS1103.dbo.EvolutionTree ADD CONSTRAINT fk_evolutiontree_evomaterialid4 FOREIGN KEY ( EvoMaterialIDFour ) REFERENCES SWTS1103.dbo.MonsterClass( MonsterClassID ) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE SWTS1103.dbo.EvolutionTree ADD CONSTRAINT fk_evolutiontree_evomaterialid5 FOREIGN KEY ( EvoMaterialIDFive ) REFERENCES SWTS1103.dbo.MonsterClass( MonsterClassID ) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE SWTS1103.dbo.EvolutionTree ADD CONSTRAINT fk_evolutiontree_monsterclass FOREIGN KEY ( BaseMonsterID ) REFERENCES SWTS1103.dbo.MonsterClass( MonsterClassID ) ON DELETE NO ACTION ON UPDATE NO ACTION;
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

-- LatentList Table

CREATE TABLE SWTS1103.dbo.LatentSkillList ( 
	InstanceID           int NOT NULL   ,
	LatentSkillOne       varchar(50)    ,
	LatentSkillTwo       varchar(50)    ,
	LatentSkillThree     varchar(50)    ,
	LatentSkillFour      varchar(50)    ,
	LatentSkillFive      varchar(50)    ,
	LatentSkillSix       varchar(50)    ,
	ExtraSlot            bit NOT NULL CONSTRAINT defo_ExtraSlot DEFAULT 0  ,
	CONSTRAINT Pk_LatentSkillList PRIMARY KEY ( InstanceID )
 );

CREATE  INDEX idx_LatentSkillList ON SWTS1103.dbo.LatentSkillList ( LatentSkillOne );
CREATE  INDEX idx_LatentSkillList_0 ON SWTS1103.dbo.LatentSkillList ( LatentSkillTwo );
CREATE  INDEX idx_LatentSkillList_1 ON SWTS1103.dbo.LatentSkillList ( LatentSkillThree );
CREATE  INDEX idx_LatentSkillList_2 ON SWTS1103.dbo.LatentSkillList ( LatentSkillFour );
CREATE  INDEX idx_LatentSkillList_3 ON SWTS1103.dbo.LatentSkillList ( LatentSkillFive );
CREATE  INDEX idx_LatentSkillList_4 ON SWTS1103.dbo.LatentSkillList ( LatentSkillSix );
ALTER TABLE SWTS1103.dbo.LatentSkillList ADD CONSTRAINT fk_LatentSkillList FOREIGN KEY ( LatentSkillOne ) REFERENCES SWTS1103.dbo.LatentSkill( LatentSkillName ) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE SWTS1103.dbo.LatentSkillList ADD CONSTRAINT fk_LatentSkillList_0 FOREIGN KEY ( LatentSkillTwo ) REFERENCES SWTS1103.dbo.LatentSkill( LatentSkillName ) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE SWTS1103.dbo.LatentSkillList ADD CONSTRAINT fk_LatentSkillList_1 FOREIGN KEY ( LatentSkillThree ) REFERENCES SWTS1103.dbo.LatentSkill( LatentSkillName ) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE SWTS1103.dbo.LatentSkillList ADD CONSTRAINT fk_LatentSkillList_2 FOREIGN KEY ( LatentSkillFour ) REFERENCES SWTS1103.dbo.LatentSkill( LatentSkillName ) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE SWTS1103.dbo.LatentSkillList ADD CONSTRAINT fk_LatentSkillList_3 FOREIGN KEY ( LatentSkillFive ) REFERENCES SWTS1103.dbo.LatentSkill( LatentSkillName ) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE SWTS1103.dbo.LatentSkillList ADD CONSTRAINT fk_LatentSkillList_4 FOREIGN KEY ( LatentSkillSix ) REFERENCES SWTS1103.dbo.LatentSkill( LatentSkillName ) ON DELETE NO ACTION ON UPDATE NO ACTION;

--Instance Table
CREATE TABLE SWTS1103.dbo.MonsterInstance ( 
	InstanceID           int NOT NULL   ,
	PlayerID             int NOT NULL   ,
	MonsterClassID       int NOT NULL   ,
	CurrentExperience    int NOT NULL   ,
	PlusATK              int NOT NULL   ,
	PlusRCV              int NOT NULL   ,
	PlusHP               int NOT NULL   ,
	SkillsAwoke          int NOT NULL   ,
	AssistMonsterID      int    ,
	SkillLevel           int    ,
	LSListID             int    ,
	ActiveSkillCoolDown  int NOT NULL CONSTRAINT defo_ActiveSkillCoolDown DEFAULT 0  ,
	CurrentHP            int NOT NULL CONSTRAINT defo_CurrentHP DEFAULT 0  ,
	CurrentATK           int NOT NULL CONSTRAINT defo_CurrentATK DEFAULT 0  ,
	CurrentRCV           int NOT NULL CONSTRAINT defo_CurrentRCV DEFAULT 0  ,
	PlusHPAmount         int NOT NULL CONSTRAINT defo_PlusHPAmount DEFAULT 0  ,
	PlusATKAmount        int NOT NULL CONSTRAINT defo_PlusATKAmount DEFAULT 0  ,
	PlusRCVAmount        int NOT NULL CONSTRAINT defo_PlusRCVAmount DEFAULT 0  ,
	CurrentLevel         int NOT NULL CONSTRAINT defo_CurrentLevel DEFAULT 0  ,
	CONSTRAINT PK__Instance__5C51996FBA3F55C1 PRIMARY KEY ( InstanceID )
 );

CREATE  INDEX idx_MonsterInstance ON dbo.MonsterInstance ( LSListID );
ALTER TABLE SWTS1103.dbo.MonsterInstance ADD CONSTRAINT FK_Instance_BaseMonsterID FOREIGN KEY ( MonsterClassID ) REFERENCES SWTS1103.dbo.MonsterClass( MonsterClassID ) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE SWTS1103.dbo.MonsterInstance ADD CONSTRAINT FK_Instance_PlayerID FOREIGN KEY ( PlayerID ) REFERENCES SWTS1103.dbo.Player( PlayerID ) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE SWTS1103.dbo.MonsterInstance ADD CONSTRAINT FK_Instance_AssistMonsterID FOREIGN KEY ( AssistMonsterID ) REFERENCES SWTS1103.dbo.MonsterInstance( InstanceID ) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE SWTS1103.dbo.MonsterInstance ADD CONSTRAINT fk_MonsterInstance FOREIGN KEY ( LSListID ) REFERENCES SWTS1103.dbo.LatentSkillList( InstanceID ) ON DELETE NO ACTION ON UPDATE NO ACTION;


--Badge table create
CREATE TABLE SWTS1103.dbo.Badge ( 
	BadgeName            varchar(50) NOT NULL   ,
	BadgeDesc            varchar(max) NOT NULL   ,
	PRIMARY KEY ( BadgeName )
 );

--Team table create
CREATE TABLE SWTS1103.dbo.Team ( 
	TeamInstanceID       int NOT NULL   ,
	PlayerID             int NOT NULL   ,
	TeamName             varchar(50)    ,
	LeaderMonster        int NOT NULL   ,
	SubMonsterOne        int    ,
	SubMonsterTwo        int    ,
	SubMonsterThree      int    ,
	SubMonsterFour       int    ,
	BadgeName            varchar(50)    ,
	TeamHP               int NOT NULL CONSTRAINT defo_TeamHP DEFAULT 0  ,
	FireATK              int NOT NULL CONSTRAINT defo_FireATK DEFAULT 0  ,
	WaterATK             int NOT NULL CONSTRAINT defo_WaterATK DEFAULT 0  ,
	WoodATK              int NOT NULL CONSTRAINT defo_WoodATK DEFAULT 0  ,
	LightATK             int NOT NULL CONSTRAINT defo_LightATK DEFAULT 0  ,
	DarkATK              int NOT NULL CONSTRAINT defo_DarkATK DEFAULT 0  ,
	TeamRCV              int NOT NULL CONSTRAINT defo_TeamRCV DEFAULT 0  ,
	TeamCost             int NOT NULL CONSTRAINT defo_TeamCost DEFAULT 0  ,
	TeamLeaderSkill      varchar(100)    ,
	CONSTRAINT Pk_Team PRIMARY KEY ( TeamInstanceID ),
	
 );

CREATE  INDEX idx_Team ON SWTS1103.dbo.Team ( PlayerID );
CREATE  INDEX idx_Team_0 ON SWTS1103.dbo.Team ( SubMonsterTwo );
CREATE  INDEX idx_Team_1 ON SWTS1103.dbo.Team ( SubMonsterThree );
CREATE  INDEX idx_Team_2 ON SWTS1103.dbo.Team ( SubMonsterFour );
ALTER TABLE SWTS1103.dbo.Team ADD CONSTRAINT fk_team_player FOREIGN KEY ( PlayerID ) REFERENCES SWTS1103.dbo.Player( PlayerID ) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE SWTS1103.dbo.Team ADD CONSTRAINT fk_team_monsterinstanceLeader FOREIGN KEY ( LeaderMonster ) REFERENCES SWTS1103.dbo.MonsterInstance( InstanceID ) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE SWTS1103.dbo.Team ADD CONSTRAINT fk_team_monsterinstanceSub1 FOREIGN KEY ( SubMonsterOne ) REFERENCES SWTS1103.dbo.MonsterInstance( InstanceID ) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE SWTS1103.dbo.Team ADD CONSTRAINT fk_team_monsterinstanceSub2 FOREIGN KEY ( SubMonsterTwo ) REFERENCES SWTS1103.dbo.MonsterInstance( InstanceID ) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE SWTS1103.dbo.Team ADD CONSTRAINT fk_team_monsterinstanceSub3 FOREIGN KEY ( SubMonsterThree ) REFERENCES SWTS1103.dbo.MonsterInstance( InstanceID ) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE SWTS1103.dbo.Team ADD CONSTRAINT fk_team_monsterinstanceSub4 FOREIGN KEY ( SubMonsterFour ) REFERENCES SWTS1103.dbo.MonsterInstance( InstanceID ) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE SWTS1103.dbo.Team ADD CONSTRAINT fk_team_badge FOREIGN KEY ( BadgeName ) REFERENCES SWTS1103.dbo.Badge( BadgeName ) ON DELETE NO ACTION ON UPDATE NO ACTION;



--Monster growth curve table create
CREATE TABLE SWTS1103.dbo.Curve ( 
	CurveInstance        varchar(50) NOT NULL  ,
	ExperienceCurve      float NOT NULL CONSTRAINT defo_ExperienceCurve DEFAULT 0  ,
	ExperienceCurveDesc  varchar(max)    ,
	NormalStatCurve      float NOT NULL   CONSTRAINT defo_EarlyCurve DEFAULT 1  ,
	NormalStatCurveDesc  varchar(max) NOT NULL   ,
	EarlyCurve           float NOT NULL CONSTRAINT defo_EarlyCurve DEFAULT 0.7  ,
	EarlyCurveDesc       varchar(max) NOT NULL   ,
	LateCurve            float NOT NULL CONSTRAINT defo_LateCurve DEFAULT 1.5  ,
	LateCurveDesc        varchar(max) NOT NULL   ,
	CONSTRAINT Pk_Curves PRIMARY KEY ( CurveInstance )
 );


