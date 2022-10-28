import pandas as pd
from _read_files import read_stadiums
from connect import connectdb

connection = connectdb()
cur = connection.cursor()
stadiums = read_stadiums()

def select_stadiums():
    df = pd.read_sql_query(stadiums, connection)
    return df


def run():
    print(select_stadiums())

if __name__ == "__main__":
    run()