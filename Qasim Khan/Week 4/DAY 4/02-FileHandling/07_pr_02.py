def game():
    return 43

score=game()

with open("C:\CWQ PYTHON COURCE\chapter 9\high_score.txt") as f :
    hs = f.read()

if hs == "":
        with open("C:\CWQ PYTHON COURCE\chapter 9\high_score.txt","w") as f :
            f.write(str(score))

elif int(hs)<score:
        with open("C:\CWQ PYTHON COURCE\chapter 9\high_score.txt","w") as f :
            f.write(str(score))
            