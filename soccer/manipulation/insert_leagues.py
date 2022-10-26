from _read_files import get_leagues
import mysql.connector as conn
from config import config
import datetime
from insert_statements import insert_leagues

# connection
def connectdb():
    params = config()
    connection = conn.connect(**params)
    
    return connection

connection = connectdb()
cur = connection.cursor()
df = get_leagues()
insert_ = insert_leagues()
insert_date = datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')

def by_row():
    df['insert_date'] = insert_date
    df['data'] = df[['league_name','league_level','country_id','insert_date']].values.tolist()
    rows = list(df['data'])
    return rows

def insert_data():
    data_list = []
    lists = by_row()

    for data in lists:
        data_list.append(tuple(data)) 

    #return data_list
    cur.executemany(insert_,data_list)
    connection.commit()
    connection.close()


def run():
    #print(insert_data())
    insert_data()


if __name__ == "__main__":
    run()