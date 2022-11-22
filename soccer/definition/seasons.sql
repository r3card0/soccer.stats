CREATE TABLE IF NOT EXISTS seasons
(seasonId INT (5) NOT NULL AUTO_INCREMENT
, tournamentId INTEGER
, season VARCHAR(30)
, startDate DATE
, endDate DATE
, insertDate DATETIME DEFAULT NOW()
, CONSTRAINT seasons_pk PRIMARY KEY (seasonId))