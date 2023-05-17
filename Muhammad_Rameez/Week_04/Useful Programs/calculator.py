## ============ Calculator ============

print("=====================================================")
print("============== Welcome to Solve Calci ===============")
print("=====================================================")


def sum(a, b):
    add = a + b
    print(f"The addition of {a} and {b} is {add}")


def sub(a, b):
    if a < b:
        minus = b - a
    else:
        minus = a - b
    print(f"The substraction of {a} and {b} is {minus}")


def div(a, b):
    if a < b:
        divv = b / a
    else:
        divv = a / b
    print(f"The division of {a} and {b} is {divv}")


def mul(a, b):
    pro = a * b
    print(f"The product of {a} and {b} is {pro}")


replay = True
while replay:
    param1 = input("Enter your first number : ")
    param2 = input("Enter your second number : ")
    param1 = int(param1)
    param2 = int(param2)
    print("\nFunction :")
    print("1. Addition")
    print("2. Substraction")
    print("3. Multiplication")
    print("4. Division")

    choice = input("Choose the function : ")
    if choice == "1":
        sum(param1, param2)
        replay = False
    elif choice == "2":
        sub(param1, param2)
        replay = False
    elif choice == "3":
        mul(param1, param2)
        replay = False
    elif choice == "4":
        div(param1, param2)
        replay = False
    else:
        print("Please enter number between 1 and 4")
        replay = True
    reChoice = input("Do you want to run again ? (y/n) ")
    if reChoice.lower() == "y":
        replay = True
    else:
        replay = False
