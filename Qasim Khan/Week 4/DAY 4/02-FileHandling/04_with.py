# The best way to open and close file automaically is the "with" statement 
# here we dont need to write f.close

a = input("Enter name")

with open('C:\CWQ PYTHON COURCE\chapter 9\sample.txt' ) as f:
 data = f.read()
with open('C:\CWQ PYTHON COURCE\chapter 9\sample.txt',"w" ) as f:
  a = f.write(a)  
# print (data)


