# 16. Dictionary
# store dtaa in key value pair form
# use curly bracket for dictionary

monthconv={
      "Jan": "Januray",
      "Feb":  "Feburary",
      "Mar": "March"
}
print(monthconv.get("Jan"))
print(monthconv["Feb"])
print(monthconv.get("luv ","not found"))

#/////////////////////////////////////////////////////////////////////

# 17 while loop

i=1
while(i<=10):
     print(i)
     i+=1

#/////////////////////////////////////////////////////////////////////

# 18 guess the game

secret_word="cat"
guess_word=""
guess_count=0
guess_limit=3
out_of_guesses=False

while(guess_word!=secret_word and not out_of_guesses):
    if(guess_count<guess_limit):
        guess_word = input("enter the guessing word")
        guess_count+=1
    else:
        out_of_guesses=True

if (out_of_guesses):
    print("guess limit finiah")
else:
    print("you win")

#/////////////////////////////////////////////////////////////////////

#19 array and for loop

friends=["JIm" , "carol " , "ali"]
for friend in friends:
    print(friend)

#print elements in for loop
for name in range(10):
    print(name)

for print_friends_array in range(len(friends)):
    print(friends[print_friends_array])




