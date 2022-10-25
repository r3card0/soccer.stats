SELECT country_name, admin2_name,city_name, stadium_name
FROM stadiums s
JOIN mundo.cities c ON c.city_id = s.city_id
JOIN mundo.admin2 a ON a.admin2_id = c.admin2_id
JOIN mundo.countries co ON a.country_id = co.country_id
;