/* 
Get the data from soccer stadiums of Mexico
*/

DELIMITER //
CREATE PROCEDURE estadiosMex()
BEGIN
SELECT country_name pais, admin2_name estado
,city_name ciudad, stadium_name estadio
FROM stadiums s
JOIN mundo.cities c ON c.city_id = s.city_id
JOIN mundo.admin2 a ON a.admin2_id = c.admin2_id
JOIN mundo.countries co ON a.country_id = co.country_id
WHERE co.country_id = 43
;
END //
DELIMITER;