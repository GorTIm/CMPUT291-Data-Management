import os

def splittweets():
     fr=open("tweets.txt","r")
     fw=open("tweetsW.txt","w")
     split(fr,fw)
     fr.close()
     fw.close()



def splitterms():
     fr=open("terms.txt","r")
     fw=open("termsW.txt","w")
     split(fr,fw)
     fr.close()
     fw.close()     

def splitdates():
     fr=open("dates.txt","r")
     fw=open("datesW.txt","w")
     split(fr,fw)
     fr.close()
     fw.close()         


def split(fr,fw):
     #read the whole file as a string
     fileString=fr.read()
     #split the file into a list of each line without new line char
     filelist=fileString.splitlines()
     #for each line,remove the backslash 
     #and split into a list of two new strings by ":"
     for string in filelist:
          newstring=string.replace("\\"," ")
          stringlist=newstring.split(':',1)
          for i in stringlist:
               fw.write(i)
               fw.write("\n")     


def main():
     splittweets()
     splitterms()
     splitdates()

main()