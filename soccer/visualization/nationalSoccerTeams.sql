SELECT team_name, teamType, c.country_name
FROM adminsteams at
JOIN teams t ON t.team_id = at.teamId
JOIN mundo.countries c ON c.country_id = at.adminId
;