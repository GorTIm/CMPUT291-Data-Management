#establishing connnection
from bsddb3 import db
from xml.dom import minidom
import sys
import re


def main():
    termSet=set()
    dateSet=set()
    string=input("Enter conditions:")
    string = string.lower()
    stringList=string.split(" ")
    
    for c in stringList:
        condition=c.split(":")
        #condition1--equal search
        if len(condition)>1:
            #condition1.1--equal search on date
            if condition[0]=="date":
                key = condition[1].lower()
                key = bytes(key, 'utf-8')    
                database = db.DB()
                database.open('da.idx')
                cur = database.cursor()
                result = cur.get(key ,db.DB_SET)
                if result != None:
                    numid = re.sub(b'[^0-9\n\.]', '',result[1] )
                    dateSet.add(numid) 
                             
                    result=cur.next_dup()
                        
                    while result:
                        numid = re.sub(b'[^0-9\n\.]', '',result[1] )
                        dateSet.add(numid)             
                        result=cur.next_dup()
            #condition1.2  search on text(both equal and partial)
            elif condition[0]=="text":
                prefix=False
                key = condition[1]
                if key.endswith("%"):
                    key=key[:-1]
                    prefix=True
                key= key.lower()
                #cpkey is a string
                cpkey = "t-"+key
                length=len(cpkey)
                #key is a byte literal
                key = bytes(key, 'utf-8')
                database = db.DB()
                database.open('te.idx')
                cur = database.cursor() 
                if prefix==False:
                    result = cur.get(b't-'+ key ,db.DB_SET)
                    if result != None:     
                        numid = re.sub(b'[^0-9\n\.]', '',result[1] )
                        termSet.add(numid)   
                    
                        result=cur.next_dup()
                        while result:
                            numid = re.sub(b'[^0-9\n\.]', '',result[1] )
                            termSet.add(numid)        
                            result=cur.next_dup()        
                
                elif prefix==True:
                    result= cur.first()
                    while result:
                        term=str(result[0])
                        term= term[2:]
                        term= term[:-1]
                        term=term[:length]
                        if term==cpkey:
                            numid = re.sub(b'[^0-9\n\.]', '',result[1] )
                            termSet.add(numid) 
                        result=cur.next()            
                
                
            #condition1.3  search on name(both equal and partial) 
            elif condition[0]=="name":
                prefix=False
                key = condition[1]
                if key.endswith("%"):
                    key=key[:-1]
                    prefix=True
                key= key.lower()
                #cpkey is a string
                cpkey = "n-"+key
                length=len(cpkey)
                #key is a byte literal
                key = bytes(key, 'utf-8')
                database = db.DB()
                database.open('te.idx')
                cur = database.cursor() 
                if prefix==False:
                    result = cur.get(b'n-'+ key ,db.DB_SET)
                    if result != None:     
                        numid = re.sub(b'[^0-9\n\.]', '',result[1] )
                        termSet.add(numid)   
                    
                        result=cur.next_dup()
                        while result:
                            numid = re.sub(b'[^0-9\n\.]', '',result[1] )
                            termSet.add(numid)        
                            result=cur.next_dup()        
                
                elif prefix==True:
                    result= cur.first()
                    while result:
                        term=str(result[0])
                        term= term[2:]
                        term= term[:-1]
                        term=term[:length]
                        if term==cpkey:
                            numid = re.sub(b'[^0-9\n\.]', '',result[1] )
                            termSet.add(numid) 
                        result=cur.next()                   
                
            #condition1.4  search on location(both equal and partial)    
            elif condition[0]=="location":
                prefix=False
                key = condition[1]
                if key.endswith("%"):
                    key=key[:-1]
                    prefix=True
                key= key.lower()
                #cpkey is a string
                cpkey = "l-"+key
                length=len(cpkey)
                #key is a byte literal
                key = bytes(key, 'utf-8')
                database = db.DB()
                database.open('te.idx')
                cur = database.cursor() 
                if prefix==False:
                    result = cur.get(b'l-'+ key ,db.DB_SET)
                    if result != None:     
                        numid = re.sub(b'[^0-9\n\.]', '',result[1] )
                        termSet.add(numid)   
                    
                        result=cur.next_dup()
                        while result:
                            numid = re.sub(b'[^0-9\n\.]', '',result[1] )
                            termSet.add(numid)        
                            result=cur.next_dup()        
                
                elif prefix==True:
                    result= cur.first()
                    while result:
                        term=str(result[0])
                        term= term[2:]
                        term= term[:-1]
                        term=term[:length]
                        if term==cpkey:
                            numid = re.sub(b'[^0-9\n\.]', '',result[1] )
                            termSet.add(numid) 
                        result=cur.next()                  
                
                
        else:
            condition=c.split(">")
            
            #condition2 range search on date(greater than)
            if len(condition)>1:
                key = condition[1]
                key = key.lower()
                key = bytes(key, 'utf-8')      
                database = db.DB()
                database.open('da.idx')
                cur = database.cursor()
                result= cur.first()
                if result != None:
                    while result[0]<=key:
                        result=cur.next()
                    while result:
                        numid = re.sub(b'[^0-9\n\.]', '',result[1] )
                        dateSet.add(numid)              
                        result=cur.next()                 
                
                
            else:
                condition=c.split("<")
                #condition3 range search on date(smaller than)
                if len(condition)>1:
                    key = condition[1]
                    key = key.lower()
                    key = bytes(key, 'utf-8')      
                    database = db.DB()
                    database.open('da.idx')
                    cur = database.cursor()
                    result=cur.first()
                    if result != None:
                        numid = re.sub(b'[^0-9\n\.]', '',result[1] )
                        dateSet.add(numid)   
                        result=cur.next()
                        while result and result[0]<key:
                            numid = re.sub(b'[^0-9\n\.]', '',result[1] )
                            dateSet.add(numid)            
                            result=cur.next()                     
                #condition4  search on term 
                else:
                    key=condition[0]
                    prefix=False
                    if key.endswith("%"):
                        key=key[:-1]
                        prefix=True
                    key= key.lower()
                    length=len(key)
                    #key is a byte literal
                    key = bytes(key, 'utf-8')
                    database = db.DB()
                    database.open('te.idx')
                    cur = database.cursor() 
                    if prefix==False:
                        result = cur.get(b't-'+ key ,db.DB_SET)
                        if result != None:     
                            numid = re.sub(b'[^0-9\n\.]', '',result[1] )
                            termSet.add(numid)   
                            result=cur.next_dup()
                            while result:
                                numid = re.sub(b'[^0-9\n\.]', '',result[1] )
                                termSet.add(numid)        
                                result=cur.next_dup()
                        #name            
                        result = cur.get(b'n-'+ key ,db.DB_SET)
                        if result != None:
                            numid = re.sub(b'[^0-9\n\.]', '',result[1] )
                            termSet.add(numid )
                                
                            result=cur.next_dup()
                            while result:
                                numid = re.sub(b'[^0-9\n\.]', '',result[1] )
                                termSet.add(numid )        
                                result=cur.next_dup()
                        #location
                        result = cur.get(b'l-'+ key ,db.DB_SET)
                        if result != None:          
                            numid = re.sub(b'[^0-9\n\.]', '',result[1] )
                            termSet.add(numid )
                            result=cur.next_dup()
                            while result:
                                numid = re.sub(b'[^0-9\n\.]', '',result[1] )
                                termSet.add(numid )         
                                result=cur.next_dup()                        
                        
                        
                
                    elif prefix==True:
                        key=str(key)
                        key= key[2:]
                        key= key[:-1]                        
                        result= cur.first()
                        while result:
                            term=str(result[0])
                            term= term[2:]
                            term= term[:-1]
                            term= term[2:]
                            term=term[:length]
                            if term==key:
                                numid = re.sub(b'[^0-9\n\.]', '',result[1] )
                                termSet.add(numid)
                            result=cur.next()  
                            
                            
                          

    if termSet.isdisjoint(dateSet):
        if len(termSet)==0 and len(dateSet)>0:
            for c in dateSet:
                tweets(c)
        elif len(dateSet)==0 and len(termSet)>0:
            for c in termSet:
                tweets(c)
        
        
    else:
        commonSet= termSet&dateSet       
        for c in commonSet:
            tweets(c)
    
    main()

  
 

def tweets(numid):

    database = db.DB()
    database.open('tw.idx')
    cur = database.cursor() 
    result = cur.get(numid ,db.DB_SET)
    
    q11(result)        
    

def q11(result):
    f = open("tmp.xml", "w")
    result = str(result[1])
    result = result[2:]
    result = result[:-1]
    f.write(result)
    f = open("tmp.xml", "r")
    doc = minidom.parse("tmp.xml")
    staffs = doc.getElementsByTagName("status")
    for staff in staffs:
        id = staff.getElementsByTagName("id")[0]
        date = staff.getElementsByTagName("created_at")[0]
        text = staff.getElementsByTagName("text")[0]
        retweet = staff.getElementsByTagName("retweet_count")[0]
        name = staff.getElementsByTagName("name")[0]
        location = staff.getElementsByTagName("location")[0]
        description = staff.getElementsByTagName("description")[0]
        url = staff.getElementsByTagName("url")[0]  
        if id.firstChild != None:
            print("\nid: "+id.firstChild.data)
        if date.firstChild != None:
            print("date: "+date.firstChild.data)
        if text.firstChild != None:    
            print("text: "+text.firstChild.data)
        if retweet.firstChild != None: 
            print("retweet_count: "+retweet.firstChild.data)
        if name.firstChild != None: 
            print("name: "+name.firstChild.data)
        if location.firstChild != None: 
            print("location: "+location.firstChild.data)
        if description.firstChild != None: 
            print("description: "+description.firstChild.data)
        if url.firstChild != None: 
            print("url: "+url.firstChild.data)
        print("\n")
    




main()
