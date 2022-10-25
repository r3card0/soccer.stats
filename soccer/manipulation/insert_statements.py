def insert_stadiums():
    insert_ = "INSERT INTO soccer.stadiums(stadium_name,city_id,insert_date) VALUES(%s,%s,%s)"
    return insert_

def insert_teams():
    insert_ = "INSERT INTO soccer.teams(team_name,stadium_id,country_id,insert_date) VALUES(%s,%s,%s,%s)"
    return insert_

