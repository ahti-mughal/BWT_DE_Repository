#project of game(ROCK,PAPER,SCISSOR)

import random
# here random is module and randint is fuction and it's work as following
# randNo = random.randint(1, 3)
# print(randNo)


def gameWin(computer,You):
#if both values same , declare a tie!    
    if computer==You:
        return None

#Now we check all possibilities when computer chose "r"        
    elif computer=="r":
        if You=="p":
            return True
        elif You=="s":
            return False 

#Now we check all possibilities when computer chose "p"        

    elif computer=="p":
        if You=="s":
            return True
        elif You=="r":
            return False         

#Now we check all possibilities when computer chose "s"        

    elif computer=="s":
        if You=="r":
            return True
        elif You=="p":
            return False 


print("Computer Turn : ROCK(r) PAPER(p) or SCISSOR(s)? \n") 
randNo = random.randint(1, 3)
if randNo==1:
    computer = "r"
elif randNo==2:
    computer = "p"
elif randNo==3:
    computer = "s"        

     
You = input("Your Turn : ROCK(r) PAPER(p) or SCISSOR(s)? \n")


Result = gameWin(computer,You)

print(f"computer chose {computer}")
print(f"You chose {You}")

if Result == None:
    print("The Game is tie!") 
elif Result == True:
    print("You Win!")     
else:
    print("You Lose!")