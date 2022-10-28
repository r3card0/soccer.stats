import pandas as pd
from _read_files import read_stadiums, read_teams_by_league, read_teams
from connect import connectdb

connection = connectdb()
cur = connection.cursor()
stadiums = read_stadiums()
teams_by_league = read_teams_by_league()
teams = read_teams()

def select_stadiums():
    df = pd.read_sql_query(stadiums, connection)
    return df

def select_team_by():
    df = pd.read_sql_query(teams_by_league, connection)
    return df

def select_teams():
    df = pd.read_sql_query(teams, connection)
    return df

def run():
    print(select_team_by())

if __name__ == "__main__":
    run()