SELECT league_name, season_name, team_name
FROM leagues l
JOIN seasons s ON s.league_id = l.league_id
JOIN teams_seasons ts ON ts.season_id = s.season_id
JOIN teams t ON t.team_id = ts.team_id
;