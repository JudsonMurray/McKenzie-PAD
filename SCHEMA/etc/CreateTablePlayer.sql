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