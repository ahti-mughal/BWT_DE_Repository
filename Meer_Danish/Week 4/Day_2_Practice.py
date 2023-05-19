# /* Python Practice Day 2  Added*/
# /*MEER DANISH*/


# Write a program that takes a user's age as input and then outputs a 
# message based on the following conditions:

# If the user's age is less than 18, print "You are a minor"
# If the user's age is between 18 and 64 (inclusive), print "You are an adult"
# If the user's age is 65 or greater, print "You are a senior citizen"

Age=int(input("Enter Your Age\n"))

if Age < 18:
    print("You are a Minor")
elif Age >=18 and Age<=64:
    print("You are an adult")
else:
    print("You are seniour citizen")


# Write a program that takes a user's input and determines whether it is a positive, negative, 
# or zero number. The program should output a message based on the following conditions:

# If the number is positive, print "The number is positive."
# If the number is negative, print "The number is negative."
# If the number is zero, print "The number is zero."

number= eval(input("Enter a number \n"))
if number > 0:
    print("The number is positive")
elif number < 0:
    print("The number is negative")
else:
    print("The number is zero")    