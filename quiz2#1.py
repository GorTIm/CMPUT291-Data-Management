import sqlite3
import sys
import cx_Oracle


def checkMandP(Type):
    con = cx_Oracle.connect('whan/Hwh1994411@gwynne.cs.ualberta.ca[:1521]/CRS') 
    curs=con.cursor()
    query="select pr.maker,p.price from c291.product pr,c291."
    +Type+" p where pr.model=p.model order by p.price desc"
    curs.execute(query)
    for row in curs:
        print(row)
        
        

def main():
    Type=input('Please enter the type of product:')
    checkMandP(Type)


main()