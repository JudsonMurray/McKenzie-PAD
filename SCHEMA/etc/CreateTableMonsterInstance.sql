CREATE TABLE dbo.MonsterInstance ( 
	InstanceID           int NOT NULL   IDENTITY(100000,1)
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
	CONSTRAINT PK__Instance__5C51996FBA3F55C1 PRIMARY KEY ( InstanceID )
 );

CREATE  INDEX idx_MonsterInstance ON dbo.MonsterInstance ( LSListID );
ALTER TABLE dbo.MonsterInstance ADD CONSTRAINT FK_Instance_BaseMonsterID FOREIGN KEY ( MonsterClassID ) REFERENCES dbo.MonsterClass( MonsterClassID ) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE dbo.MonsterInstance ADD CONSTRAINT FK_Instance_PlayerID FOREIGN KEY ( PlayerID ) REFERENCES dbo.Player( PlayerID ) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE dbo.MonsterInstance ADD CONSTRAINT FK_Instance_AssistMonsterID FOREIGN KEY ( AssistMonsterID ) REFERENCES dbo.MonsterInstance( InstanceID ) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE dbo.MonsterInstance ADD CONSTRAINT fk_MonsterInstance FOREIGN KEY ( LSListID ) REFERENCES dbo.LatentSkillList( InstanceID ) ON DELETE NO ACTION ON UPDATE NO ACTION;

