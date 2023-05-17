# Ask user to input three numbers
# and you have to print the average of
# three numbers using string formatting

a,b,c=input("Enter num1, num2, num3 (separated by comma)").split(",")
print(f"The average of three numbers is {(int(a)+int(b)+int(c))/3}")