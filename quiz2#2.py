import sqlite3
import sys
import cx_Oracle

def checkPforM(Maker):
    namelist=[]
    con = cx_Oracle.connect("whan", "Hwh1994411!", "gwynne.cs.ualberta.ca:1521/CRS")      
    curs=con.cursor()
    query="select * from c291.product where maker="+Maker
    curs.execute(query)
    columns=curs.description
    
    for column in columns:
        namelist.append(column[0])
    query="create table "+Maker+" ("+namelist[0]
    +" char(20), primary key("+namelist[0]+")"
    curs.execute(query)
    
    for columnName in namelist[1:]:
        query="alter table "+Maker+" add("+columnName+" char(20))"
        curs.execute(query)
    query="select * from c291.product where maker="+Maker
    curs.execute(query)
    rows=curs.fetchall()
    for row in rows:
        query="insert into "+Maker+" values"+row
        curs.execute(query)
        
        
        
def main():
    Maker=input('Please enter the name of maker:')
    checkPforM(Maker)

main()
        