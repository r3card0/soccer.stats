import mysql.connector as conn
from config import config


# connection
def connectdb():
    params = config()
    connection = conn.connect(**params)
    
    return connection