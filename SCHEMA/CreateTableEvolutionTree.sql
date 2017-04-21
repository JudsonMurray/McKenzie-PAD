CREATE TABLE monsterclass.EvolutionTree ( 
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

CREATE  INDEX idx_EvolutionTree ON monsterclass.EvolutionTree ( EvoMaterialIDOne );

CREATE  INDEX idx_EvolutionTree ON monsterclass.EvolutionTree ( EvoMaterialIDTwo );

CREATE  INDEX idx_EvolutionTree ON monsterclass.EvolutionTree ( EvoMaterialIDThree );

CREATE  INDEX idx_EvolutionTree ON monsterclass.EvolutionTree ( EvoMaterialIDFour );

CREATE  INDEX idx_EvolutionTree ON monsterclass.EvolutionTree ( EvoMaterialIDFive );

CREATE  INDEX idx_EvolutionTree_0 ON monsterclass.EvolutionTree ( BaseMonsterID );

ALTER TABLE monsterclass.EvolutionTree ADD CONSTRAINT fk_evolutiontree_evomaterialid1 FOREIGN KEY ( EvoMaterialIDOne ) REFERENCES monsterclass.MonsterClass( MonsterID ) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE monsterclass.EvolutionTree ADD CONSTRAINT fk_evolutiontree_evomaterialid2 FOREIGN KEY ( EvoMaterialIDTwo ) REFERENCES monsterclass.MonsterClass( MonsterID ) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE monsterclass.EvolutionTree ADD CONSTRAINT fk_evolutiontree_evomaterialid3 FOREIGN KEY ( EvoMaterialIDThree ) REFERENCES monsterclass.MonsterClass( MonsterID ) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE monsterclass.EvolutionTree ADD CONSTRAINT fk_evolutiontree_evomaterialid4 FOREIGN KEY ( EvoMaterialIDFour ) REFERENCES monsterclass.MonsterClass( MonsterID ) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE monsterclass.EvolutionTree ADD CONSTRAINT fk_evolutiontree_evomaterialid5 FOREIGN KEY ( EvoMaterialIDFive ) REFERENCES monsterclass.MonsterClass( MonsterID ) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE monsterclass.EvolutionTree ADD CONSTRAINT fk_evolutiontree_monsterclass FOREIGN KEY ( BaseMonsterID ) REFERENCES monsterclass.MonsterClass( MonsterID ) ON DELETE NO ACTION ON UPDATE NO ACTION;

