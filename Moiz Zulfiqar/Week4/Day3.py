# # Calculator
# n1 = int(input("Num1? "))
# n2 = int(input("Num2? "))
# op = input("Operator? ")
#
# ans = 0
#
# if op == "+":
#     ans = n1 + n2
# elif op == "-":
#     ans = n1 - n2
# elif op == "/":
#     ans = n1 / n2
# else:
#     ans = n1 * n2
#
# print(ans)

# Dictionaries

# daysConv = {
#     "Mon" : "Monday",
#     "Tue" : "Tuesday",
#     "Wed" : "Wednesday"
# }
#
# print(daysConv["Tue"])
# print(daysConv.get("Wed"))
# print(daysConv.get("None", "Not A Valid Key"))

# Game

# guessCount = 0
# guessCountLimit = 3
# guessWord = "Lolz"
# guess = ""
# outOfGuesses = False
#
# while guess != guessWord and not(outOfGuesses):
#     if guessCount < guessCountLimit:
#         guess = input("Guess? ")
#         guessCount+=1
#     else:
#         outOfGuesses = True
#
# if outOfGuesses:
#     print("You ran out of guesses, You Lose")
# else:
#     print("Correct Guess, You Win")

# # Exponent Function
#
# def raiseToPower(base, power):
#     res = 1
#     for i in range(power):
#         res = res * base
#     return res
#
# print(raiseToPower(2,3))

# twoDList = [
#     [1,2,3],
#     [4,5,6],
#     [7,8,9]
# ]
#
# for i in twoDList: # dont do for i in range(twoDList)
#     print(i)
#
# print("--------")
# for i in twoDList:
#     for j in i:
#         print(j)

# Translation

def translate(phrase):
    translation = ""
    for i in phrase:
        if i in "AEIOUaeiou":
            translation = translation + "g"
        else:
            translation = translation + i
    return translation

print(translate(input("Phrase? ")))