CREATE TABLE IF NOT EXISTS positions
(
    positionId INT AUTO_INCREMENT
    , position VARCHAR(23)
    , main INTEGER NOT NULL
    , insertDate DATETIME DEFAULT NOW()
    , CONSTRAINT positions_pk PRIMARY KEY (positionId)
)