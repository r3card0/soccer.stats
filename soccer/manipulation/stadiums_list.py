from select_statements import select_stadiums
import pandas as pd
import os
import openpyxl 

df = select_stadiums()

def get_list():
    stadiums = list(df['stadium_name'])
    for stadium in stadiums:
        print(stadium)

def filter_mex():
    df_mx = df.loc[df['country_name'] == 'MEXICO'] 
    return df_mx

def get_list_2():
    df_mx = filter_mex()
    stadiums = df_mx[['stadium_name']]
    return stadiums

def create_file():
    df_file = get_list_2()
    os.chdir('/Users/ideasleon/platzi_edu/Bases_de_Datos/mysql/soccer/Doc/')
    file = df_file.to_excel('test.xlsx')
    return file

def run():
    create_file()

if __name__ == "__main__":
    run()
