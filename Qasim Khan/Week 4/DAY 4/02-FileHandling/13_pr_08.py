with open ("C:\CWQ PYTHON COURCE\chapter 9\here.txt") as f:
    content = f.read()

with open ("C:\CWQ PYTHON COURCE\chapter 9\copy.txt","w") as f:
    f.write(content)