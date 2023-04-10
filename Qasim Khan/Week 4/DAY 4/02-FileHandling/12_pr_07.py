content = True
i=1
with open("C:\CWQ PYTHON COURCE\chapter 9\logfile.txt") as f:
    while content:
        content = f.readline().lower()
        if "python" in  content.lower():
          print(content)
          print(f"yes python is present on line number {i}")
        i+=1  