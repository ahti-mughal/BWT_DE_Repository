# /* Python Practice Day 3  Added*/
# /*MEER DANISH*/

# Write a Python program that prints the numbers from 1 to 10 using a for loop.

for i in range(1,11):
    print(i)


# Write a Python program that calculates the sum of all even numbers from 2 to 100 using a while loop.

total = 0
num = 2
while num <= 100:
    total +=num
    num +=2
print("The sum of all even numbers from 2 to 100 is:", total)


# Write a Python program that prompts the user for a positive integer and calculates the factorial of that number using a for loop.

num = int(input("Enter a Number\n"))

factorial = 1

for i in range(1,num+1):
    factorial *=i
print("The factorial of", num, "is", factorial)    