SELECT c.city_name,team_name
, stadium_name
FROM teams t
JOIN stadiums s ON s.stadium_id = t.stadium_id
JOIN mundo.cities c ON c.city_id = s.city_id
;