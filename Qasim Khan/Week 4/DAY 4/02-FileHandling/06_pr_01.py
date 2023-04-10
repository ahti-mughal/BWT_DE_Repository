poem = open("C:\CWQ PYTHON COURCE\chapter 9\poem.txt","r")
q=poem.read()
if "twinkle" in q:
    print("Present")
else:
    print("Not Present")    
poem.close()

