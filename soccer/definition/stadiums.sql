CREATE TABLE IF NOT EXISTS stadiums(stadium_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT
, stadium_name VARCHAR(30) UNIQUE
, city_id INTEGER
, insert_date DATETIME);