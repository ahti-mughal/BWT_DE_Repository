with open("C:\CWQ PYTHON COURCE\chapter 9\logfile.txt") as f:
    content = f.read().lower()
if "python" in content:
    print("Yes python is present")
else:
    print("No python is not present")        