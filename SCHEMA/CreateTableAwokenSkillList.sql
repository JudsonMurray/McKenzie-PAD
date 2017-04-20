CREATE TABLE monsterclass.AwokenSkillList ( 
	ASListID             varchar(100) NOT NULL   ,
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
 ) engine=InnoDB;

CREATE  INDEX idx_AwokenSkillList ON monsterclass.AwokenSkillList ( AwokenSkillOne );

CREATE  INDEX idx_AwokenSkillList_0 ON monsterclass.AwokenSkillList ( AwokenSkillTwo );

CREATE  INDEX idx_AwokenSkillList_1 ON monsterclass.AwokenSkillList ( AwokenSkillThree );

CREATE  INDEX idx_AwokenSkillList_2 ON monsterclass.AwokenSkillList ( AwokenSkillFour );

CREATE  INDEX idx_AwokenSkillList_3 ON monsterclass.AwokenSkillList ( AwokenSkillFive );

CREATE  INDEX idx_AwokenSkillList_4 ON monsterclass.AwokenSkillList ( AwokenSkillSix );

CREATE  INDEX idx_AwokenSkillList_5 ON monsterclass.AwokenSkillList ( AwokenSkillSeven );

CREATE  INDEX idx_AwokenSkillList_6 ON monsterclass.AwokenSkillList ( AwokenSkillEight );

CREATE  INDEX idx_AwokenSkillList_7 ON monsterclass.AwokenSkillList ( AwokenSkillNine );

ALTER TABLE monsterclass.AwokenSkillList ADD CONSTRAINT fk_awokenskilllist_awokenskill1 FOREIGN KEY ( AwokenSkillOne ) REFERENCES monsterclass.AwokenSkill( AwokenSkillName ) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE monsterclass.AwokenSkillList ADD CONSTRAINT fk_awokenskilllist_awokenskill2 FOREIGN KEY ( AwokenSkillTwo ) REFERENCES monsterclass.AwokenSkill( AwokenSkillName ) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE monsterclass.AwokenSkillList ADD CONSTRAINT fk_awokenskilllist_awokenskill3 FOREIGN KEY ( AwokenSkillThree ) REFERENCES monsterclass.AwokenSkill( AwokenSkillName ) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE monsterclass.AwokenSkillList ADD CONSTRAINT fk_awokenskilllist_awokenskill4 FOREIGN KEY ( AwokenSkillFour ) REFERENCES monsterclass.AwokenSkill( AwokenSkillName ) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE monsterclass.AwokenSkillList ADD CONSTRAINT fk_awokenskilllist_awokenskill5 FOREIGN KEY ( AwokenSkillFive ) REFERENCES monsterclass.AwokenSkill( AwokenSkillName ) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE monsterclass.AwokenSkillList ADD CONSTRAINT fk_awokenskilllist_awokenskill6 FOREIGN KEY ( AwokenSkillSix ) REFERENCES monsterclass.AwokenSkill( AwokenSkillName ) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE monsterclass.AwokenSkillList ADD CONSTRAINT fk_awokenskilllist_awokenskill7 FOREIGN KEY ( AwokenSkillSeven ) REFERENCES monsterclass.AwokenSkill( AwokenSkillName ) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE monsterclass.AwokenSkillList ADD CONSTRAINT fk_awokenskilllist_awokenskill8 FOREIGN KEY ( AwokenSkillEight ) REFERENCES monsterclass.AwokenSkill( AwokenSkillName ) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE monsterclass.AwokenSkillList ADD CONSTRAINT fk_awokenskilllist_awokenskill9 FOREIGN KEY ( AwokenSkillNine ) REFERENCES monsterclass.AwokenSkill( AwokenSkillName ) ON DELETE NO ACTION ON UPDATE NO ACTION;

