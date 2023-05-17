# here we renamed file


import os

oldfile = ("C:\CWQ PYTHON COURCE\chapter 9\qasim.txt")
newfile = ("C:\CWQ PYTHON COURCE\chapter 9\qasimkhan.txt")

with open(oldfile) as f:
    content = f.read()

with open(newfile,"w") as f:
    f.write(content)

os.remove(oldfile)
