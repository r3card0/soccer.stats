CREATE TABLE IF NOT EXISTS tournaments(id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT
, tname VARCHAR(30) NOT NULL UNIQUE
, ttype INTEGER NOT NULL
, tlevel INTEGER NOT NULL
, insertDate DATETIME NOT NULL DEFAULT NOW())
;