try:
    answer = 10/0
    num = int(input("Enter a number"))
    print(num)
except ZeroDivisionError as err:
    print(err)
except ValueError:
    print("Invalid num")