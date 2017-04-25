CREATE TABLE dbo.LatentSkillList ( 
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

CREATE  INDEX idx_LatentSkillList ON dbo.LatentSkillList ( LatentSkillOne );
CREATE  INDEX idx_LatentSkillList_0 ON dbo.LatentSkillList ( LatentSkillTwo );
CREATE  INDEX idx_LatentSkillList_1 ON dbo.LatentSkillList ( LatentSkillThree );
CREATE  INDEX idx_LatentSkillList_2 ON dbo.LatentSkillList ( LatentSkillFour );
CREATE  INDEX idx_LatentSkillList_3 ON dbo.LatentSkillList ( LatentSkillFive );
CREATE  INDEX idx_LatentSkillList_4 ON dbo.LatentSkillList ( LatentSkillSix );
ALTER TABLE dbo.LatentSkillList ADD CONSTRAINT fk_LatentSkillList FOREIGN KEY ( LatentSkillOne ) REFERENCES dbo.LatentSkill( LatentSkillName ) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE dbo.LatentSkillList ADD CONSTRAINT fk_LatentSkillList_0 FOREIGN KEY ( LatentSkillTwo ) REFERENCES dbo.LatentSkill( LatentSkillName ) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE dbo.LatentSkillList ADD CONSTRAINT fk_LatentSkillList_1 FOREIGN KEY ( LatentSkillThree ) REFERENCES dbo.LatentSkill( LatentSkillName ) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE dbo.LatentSkillList ADD CONSTRAINT fk_LatentSkillList_2 FOREIGN KEY ( LatentSkillFour ) REFERENCES dbo.LatentSkill( LatentSkillName ) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE dbo.LatentSkillList ADD CONSTRAINT fk_LatentSkillList_3 FOREIGN KEY ( LatentSkillFive ) REFERENCES dbo.LatentSkill( LatentSkillName ) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE dbo.LatentSkillList ADD CONSTRAINT fk_LatentSkillList_4 FOREIGN KEY ( LatentSkillSix ) REFERENCES dbo.LatentSkill( LatentSkillName ) ON DELETE NO ACTION ON UPDATE NO ACTION;

