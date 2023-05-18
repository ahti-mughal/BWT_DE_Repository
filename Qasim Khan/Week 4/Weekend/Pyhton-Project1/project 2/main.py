import random

random_number = random.randint(0,100)

guesses = 0 

yourGuess = None

while(yourGuess!=random_number):
    yourGuess = int (input("Enter your guess : "))
    guesses+= 1

    if yourGuess == random_number:
        print(f"Your guessed is right!")

    else:
        if yourGuess > random_number:
            print(f"You guessed it wrong! Enter a smaller number")  

        else :
            print(f"You guessed it wrong! Enter a greater number")    
      
print(f"You guessed in {guesses} guesses")

with open("C:\CWQ PYTHON COURCE\project 2\HighScore.txt","r") as f:
    hs =f.read()


if int(hs) > guesses:
    print("You have just broken the record")

    with open("C:\CWQ PYTHON COURCE\project 2\HighScore.txt","w") as f:
       f.write(str(guesses))

