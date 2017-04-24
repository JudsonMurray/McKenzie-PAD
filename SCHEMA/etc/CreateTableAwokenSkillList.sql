
--DROP TABLE SWTS1103.dbo.AwokenSkillList
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

