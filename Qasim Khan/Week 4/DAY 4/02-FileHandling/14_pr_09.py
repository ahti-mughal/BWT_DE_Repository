file1="C:\CWQ PYTHON COURCE\chapter 9\here.txt"
file2="C:\CWQ PYTHON COURCE\chapter 9\copy.txt"

with open ("C:\CWQ PYTHON COURCE\chapter 9\here.txt") as f:
    f1 = f.read()

with open ("C:\CWQ PYTHON COURCE\chapter 9\copy.txt") as f:
    f2 = f.read()

if f1 == f2:
    print("Files are identical")
else:
    print("Files are not identical")        