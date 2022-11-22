INSERT INTO adminsteams(teamId,adminId,insertDate)
SELECT team_id teamId, c.country_id adminID, (SELECT now()) insertDate
FROM teams t
JOIN mundo.countries c ON country_name = team_name
where teamType=1
;