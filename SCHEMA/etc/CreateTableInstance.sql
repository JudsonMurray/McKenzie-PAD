CREATE TABLE SWTS1103.dbo.Instance ( 
	InstanceID           int NOT NULL IDENTITY(100000,1),
	PlayerID             int NOT NULL   ,
	MonsterClassID        int NOT NULL   ,
	PRIMARY KEY ( InstanceID )
 );

ALTER TABLE SWTS1103.dbo.Instance 
ADD CONSTRAINT FK_Instance_MonsterClassID FOREIGN KEY ( MonsterClassID ) 
REFERENCES SWTS1103.dbo.MonsterClass( MonsterClassID ) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE SWTS1103.dbo.Instance 
ADD CONSTRAINT FK_Instance_PlayerID FOREIGN KEY ( PlayerID ) 
REFERENCES SWTS1103.dbo.Player( PlayerID ) ON DELETE NO ACTION ON UPDATE NO ACTION;

