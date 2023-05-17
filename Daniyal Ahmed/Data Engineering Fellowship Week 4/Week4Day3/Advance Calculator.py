num1 = float(input("Enter first num: "))
op = input("Enter opertor: ")
num2 = float(input("Enter second num: "))

if op == "+":
    print(num1+num2)
elif op == "-":
    print(num1-num2)
elif op == "/":
    print(num1/num2)
elif op == "*":
    print(num1*num2)
else:
    print("Invalid operator")