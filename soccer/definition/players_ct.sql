CREATE TABLE IF NOT EXISTS players
(
    playerId INT(5) NOT NULL AUTO_INCREMENT
    , pname VARCHAR(20)
    , lastName VARCHAR(20)
    , insertDate DATETIME DEFAULT NOW()
    , CONSTRAINT players_pk PRIMARY KEY (playerId)
)