# =================== Comments =================================
# Comments ( When we want to save some information related to code
# but we dont want to run it in the code then we use comment )
# Use hash # symbol in the beginning of the code to comment that line in the code

# =================== Print ====================================
# print("hello world")
# print("My name is Muhammad Rameez")
# print("I am 21 years old")

# =================== Data Types ====================================
# name = "Muhammad Rameez"
# age = 21
# is_graduated = False
# height = 5.9

# print("My name is " + name)
# print(f"I am {age} years old")
# print(f"My height is {height}")
# print(f"Did you feel I am graduated ?? {is_graduated}")

# we don't need to declare datatype in python

# =================== Types =============================
# ran = 1j
# ran1 = 1
# ran2 = 1.23
# ran3 = 'Muhammad Rameez'
# print(type(ran))
# print(type(ran1))
# print(type(ran2))
# print(type(ran3))

# =================== Casting =============================
# name = 'My Name'
# age = float(21)
# height = str(9)
# greet = bool('hello')
# print(greet)
# print('My name is ' + str(name) + " My age is " +
#       str(age) + ' My height is ' + height)


# =================== String Slicing =============================
# name = 'Muhammad Rameez'
# print(name[0])
# print(name[4])
# print(name[0:5])
# print(name[3:5])
# print(name[-2])

# =================== String functions =============================
# import math
# name = "Muhammad Rameez "
# hello = " Hello, World! "

# print(name.capitalize())
# print(name.lower())
# print(name.upper())
# print(hello.strip())
# print(name.index('u'))
# print(name.split(' ')[1])

# =================== Comparission Operators =============================
# print(100 < 90)  # false
# print(10 == 9)  # false
# print(10 > 9)  # true

# =================== Operators =============================

# a = 5
# b = 10

# print(a+b)
# print(b-a)
# print(b/a)
# print(b*a)

# =================== List =============================
fruits = ["apple", "banana", "cherry"]
vegetables = ["potato", "tomato", "carrot", "radish"]
# fruits_price = [10, 23, 43, 34, 12, 45, 67]
# print(fruits)
# print(fruits[0])
# print(fruits[0:])
# print(fruits[0:1])
# fruits.extend(vegetables)
# # print(fruits)

# fruits.append("apples")
# fruits.insert(2, 'mango')
# fruits.reverse()
# count = fruits.count('apple')
# fruits.pop()
# fruits.sort()
# fruits.remove('apples')
# fruits.clear()
# print(fruits)
# print(count)

# =================== Loop =============================
# for item in fruits:
#     print(f'{item} is in the list')

# for i in fruits:
#     print(f"The price of {fruits.price} and {fruits_price[i]} RS")
#     i += 1
table = input('Enter the table number')

for i in range(1, 10):
    print(f'{table} x {i} = {int(table)*int(i)}')
