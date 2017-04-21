-- Player Table Creatin Script --
-- Brought to you by Billy, April 21, 2017 --

if OBJECT_ID('SWTS1103.dbo.Player', 'U') is not null
 drop table Player;

CREATE TABLE Player (
PlayerID INT NOT NULL,
PlayerExperience INT NOT NULL,
PlayerRank INT NOT NULL,
PlayerName VARCHAR(50),
PlayerAttribute VARCHAR(50),
MaxStamina INT NOT NULL,

PRIMARY KEY(PlayerID)
);
ALTER TABLE SWTS1103.dbo.Player ADD CONSTRAINT fk_PlayerAttribute_Attribute FOREIGN KEY ( PlayerAttribute ) REFERENCES SWTS1103.dbo.Attribute( AttributeName ) ON DELETE NO ACTION ON UPDATE NO ACTION;
