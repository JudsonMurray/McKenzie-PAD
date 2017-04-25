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

CREATE  INDEX idx_EvolutionTree ON SWTS1103.dbo.EvolutionTree ( EvoMaterialIDOne );

CREATE  INDEX idx_EvolutionTree ON SWTS1103.dbo.EvolutionTree ( EvoMaterialIDTwo );

CREATE  INDEX idx_EvolutionTree ON SWTS1103.dbo.EvolutionTree ( EvoMaterialIDThree );

CREATE  INDEX idx_EvolutionTree ON SWTS1103.dbo.EvolutionTree ( EvoMaterialIDFour );

CREATE  INDEX idx_EvolutionTree ON SWTS1103.dbo.EvolutionTree ( EvoMaterialIDFive );

CREATE  INDEX idx_EvolutionTree_0 ON SWTS1103.dbo.EvolutionTree ( BaseMonsterID );

ALTER TABLE SWTS1103.dbo.EvolutionTree ADD CONSTRAINT fk_evolutiontree_evomaterialid1 FOREIGN KEY ( EvoMaterialIDOne ) REFERENCES SWTS1103.dbo.MonsterClass( MonsterClassID ) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE SWTS1103.dbo.EvolutionTree ADD CONSTRAINT fk_evolutiontree_evomaterialid2 FOREIGN KEY ( EvoMaterialIDTwo ) REFERENCES SWTS1103.dbo.MonsterClass( MonsterClassID ) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE SWTS1103.dbo.EvolutionTree ADD CONSTRAINT fk_evolutiontree_evomaterialid3 FOREIGN KEY ( EvoMaterialIDThree ) REFERENCES SWTS1103.dbo.MonsterClass( MonsterClassID ) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE SWTS1103.dbo.EvolutionTree ADD CONSTRAINT fk_evolutiontree_evomaterialid4 FOREIGN KEY ( EvoMaterialIDFour ) REFERENCES SWTS1103.dbo.MonsterClass( MonsterClassID ) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE SWTS1103.dbo.EvolutionTree ADD CONSTRAINT fk_evolutiontree_evomaterialid5 FOREIGN KEY ( EvoMaterialIDFive ) REFERENCES SWTS1103.dbo.MonsterClass( MonsterClassID ) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE SWTS1103.dbo.EvolutionTree ADD CONSTRAINT fk_evolutiontree_MonsterClass FOREIGN KEY ( BaseMonsterID ) REFERENCES SWTS1103.dbo.MonsterClass( MonsterClassID ) ON DELETE NO ACTION ON UPDATE NO ACTION;

