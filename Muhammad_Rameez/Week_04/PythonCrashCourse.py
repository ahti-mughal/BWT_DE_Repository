# # =================== Comments =================================
# # Comments ( When we want to save some information related to code
# # but we dont want to run it in the code then we use comment )
# # Use hash # symbol in the beginning of the code to comment that line in the code

# # =================== Print ====================================
# print("hello world")
# print("My name is Muhammad Rameez")
# print("I am 21 years old")

# # =================== Data Types ====================================
# name = "Muhammad Rameez"
# age = 21
# is_graduated = False
# height = 5.9

# print("My name is " + name)
# print(f"I am {age} years old")
# print(f"My height is {height}")
# print(f"Did you feel I am graduated ?? {is_graduated}")

# # we don't need to declare datatype in python

# # =================== Types =============================
# ran = 1j
# ran1 = 1
# ran2 = 1.23
# ran3 = 'Muhammad Rameez'
# print(type(ran))
# print(type(ran1))
# print(type(ran2))
# print(type(ran3))

## =================== Casting =============================
# name = 'My Name'
# age = float(21)
# height = str(9)
# greet = bool('hello')
# print(greet)
# print('My name is ' + str(name) + " My age is " +
#       str(age) + ' My height is ' + height)


## =================== String Slicing =============================
# name = 'Muhammad Rameez'
# print(name[0])
# print(name[4])
# print(name[0:5])
# print(name[3:5])
# print(name[-2])

## =================== String functions =============================
# import math
# name = "Muhammad Rameez "
# hello = " Hello, World! "

# print(name.capitalize())
# print(name.lower())
# print(name.upper())
# print(hello.strip())
# print(name.index('u'))
# print(name.split(' ')[1])

## =================== Comparission Operators =============================
# print(100 < 90)  # false
# print(10 == 9)  # false
# print(10 > 9)  # true

## =================== Operators =============================

# a = 5
# b = 10

# print(a+b)
# print(b-a)
# print(b/a)
# print(b*a)

## =================== List =============================
# fruits = ["apple", "banana", "cherry"]
# vegetables = ["potato", "tomato", "carrot", "radish"]
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


# #  =================== Tuple =============================
# fav = (
#     "Augest",
#     "Leo",
#     "May",
#     10,
#     8,
#     "Allah",
#     True,
#     False,
#     "freedom",
#     "finance",
#     "books",
# )
# print(type(fav))
# print(fav)
# print(type(fav[3]) == int)

## ===== Data Type Detection in a tuple ====== (ref: Loops discuss below)
# for i in range(len(fav)):
#     if type(fav[i]) == int:
#         print(f"The number {fav[i]} is exist in the tuple")
#     elif type(fav[i]) == str:
#         print(f'The String "{fav[i]}" is exist in the tuple')
#     elif type(fav[i]) == bool:
#         print(f'This Bool "{fav[i]}" is exist in the tuple')
#     else:
#         print("Not Specified the datatype")

# #  =================== Set =============================
# mySet = {12, 32, "Hello", "Mad", True, 345, 57, False, 78, 89}
# mylist = ()
# mylist = tuple(mySet)
# add = 0
# print(mylist)

# print(type(mylist[2]))
## Indexing is not allowed in set

## ======== Sum all the integers that are present in set converted tuple
# for i in range(len(mylist)):
#     if type(mylist[i]) == int:
#         add = add + mylist[i]

# print(add)

# x = {"apple", "banana", "cherry"}
# y = {"google", "microsoft", "apple"}

# z = x.symmetric_difference(y)

# print(z)

# #  =================== Dictionary =============================

# # =================== Loop =============================
# for item in fruits:
#     print(f'{item} is in the list')

# for i in fruits:
#     print(f"The price of {i} is {fruits_price} RS")


# table = input('Enter the table number')

# for i in range(1, 10):
#     print(f"{table} x {i} = {int(table)*int(i)}")

# i = 0
# while len(fruits):
#     if i == len(fruits):
#         break
#     else:
#         print(f"The price of {fruits[i]} and {fruits_price[i]} RS")
#         i += 1

# even_num = []
# odd_num = []
# sum = []
# for i in range(1, 100):
#     if i % 2 == 0:
#         even_num.append(int(i))
#     else:
#         odd_num.append(int(i))

# # print(even_num)
# # print(odd_num)
# for i in range(len(even_num)):
#     sum.append(even_num[i] + odd_num[i])

# print(sum)

# # =================== Conditional Statement =============================
# grade = input('Enter your marks in Maths ')

# if (int(grade) < 50):
#     print('Your Grade is C')
# elif (int(grade) > 50 & int(grade) < 70):
#     print('Your Grade is B')
# elif (int(grade) > 70 & int(grade) < 80):
#     print('Your Grade is A')
# elif (int(grade) > 80):
#     print('Your Grade is A+')


# #  =================== Functions =============================
# add = 0


# def sum(a, b):
#     add = a + b
#     print(f"The sum of {a} and {b} is {add}")


# sum(23, 34)
# sum(123, 324)

## using input
# addition = 0

# def sumify(a, b):
#     add = int(a) + int(b)
#     print(f"The sum of {a} and {b} is {add}")


# param1 = input("Enter first number ")
# param2 = input("Enter second number ")

# sumify(param1, param2)


## ============ Calculator ============

# print("=====================================================")
# print("============== Welcome to Solve Calci ===============")
# print("=====================================================")


# def sum(a, b):
#     add = a + b
#     print(f"The addition of {a} and {b} is {add}")


# def sub(a, b):
#     if a < b:
#         minus = b - a
#     else:
#         minus = a - b
#     print(f"The substraction of {a} and {b} is {minus}")


# def div(a, b):
#     if a < b:
#         divv = b / a
#     else:
#         divv = a / b
#     print(f"The division of {a} and {b} is {divv}")


# def mul(a, b):
#     pro = a * b
#     print(f"The product of {a} and {b} is {pro}")


# replay = True
# while replay:
#     param1 = input("Enter your first number : ")
#     param2 = input("Enter your second number : ")
#     param1 = int(param1)
#     param2 = int(param2)
#     print("\nFunction :")
#     print("1. Addition")
#     print("2. Substraction")
#     print("3. Multiplication")
#     print("4. Division")

#     choice = input("Choose the function : ")
#     if choice == "1":
#         sum(param1, param2)
#         replay = False
#     elif choice == "2":
#         sub(param1, param2)
#         replay = False
#     elif choice == "3":
#         mul(param1, param2)
#         replay = False
#     elif choice == "4":
#         div(param1, param2)
#         replay = False
#     else:
#         print("Please enter number between 1 and 4")
#         replay = True
#     reChoice = input("Do you want to run again ? (y/n) ")
#     if reChoice.lower() == "y":
#         replay = True
#     else:
#         replay = False


# #  =================== Lambda =============================

# param1 = input("Enter first number : ")
# param2 = input("Enter second number : ")

# param1 = int(param1)
# param2 = int(param2)

# add = lambda a, b,: a + b
# print(f"The sum is {add(param1, param2)}")

# print(f"The sum is {add(10, 10)}")


# #  =================== Class/Objects =============================


# class MyColors:
#     mainColor = "red"
#     mainColor2 = "orange"
#     textColor = "black"
#     backgroundColor = "white"


# print(MyColors().backgroundColor)
# print(MyColors().textColor)
# print(MyColors().mainColor)


# class FontSize:
#     def __init__(self, fontsize, fontColor, decoration):
#         self.fontsize = fontsize
#         self.fontColor = fontColor
#         self.decoration = decoration


# a1 = FontSize(12, "brown", "normal")
# a2 = FontSize(14, "black", "bold")
# a3 = FontSize(16, "grey", "italic")


# print(a3.decoration)
# print(a2.decoration)
# print(a2.fontColor)


# #  =================== Inheritence =============================


# class Person:
#     def __init__(self, fname, lname):
#         self.firstname = fname
#         self.lastname = lname

#     def printname(self):
#         print(self.firstname, self.lastname)


# x = Person("Muhammad", "Rameez")
# x.printname()


# class Student(Person):
#     def __init__(self, fname, lname, year):
#         super().__init__(fname, lname)
#         self.graduationyear = year

#     def welcome(self):
#         print(
#             "Welcome",
#             self.firstname,
#             self.lastname,
#             "to the class of",
#             self.graduationyear,
#         )


# x = Student("Nasir", "Azam", 2019)
# x.welcome()


# #  =================== Iterator =============================


# mystr = "banana"

# for x in mystr:
#     print(x)

# #  =================== Date and Time =============================


# import datetime as d

# x = d.datetime.now()
# print(x)
# print(x.day)
# print(x.date())

# #  =================== Math functions =============================

# import math

# z = math.sqrt(64)
# x = min(5, 10, 25)
# y = max(5, 10, 25)
# ax = abs(-7.25)
# p = pow(4, 3)

# print(x)
# print(y)
# print(ax)
# print(p)
# print(z)

# #  =================== Json =============================

## Converting Json to Python

# import json

# x = '{"name":"John", "age":30, "city":"New York"}'
# student = '{"name" : "M Rameez" ,  "roll no" : 90}'


# y = json.loads(x)
# z = json.loads(student)

# print(y["name"])
# print(z["roll no"])

## Converting Python to Json

# import json

# student = {"name": "M Rameez", "rollno": 90, "is_graduated": False}

# x = json.dumps(student)

# print(x)


# #  =================== RegEX =============================


# import re

# #Check if the string starts with "The" and ends with "Spain":

# txt = "The rain in Spain"
# x = re.search("^The.*Spain$", txt)

# txt2 = "This is Ali and now find me"
# y = re.search("^This.*e$", txt2)

# if y:
#   print("YES! We have a match!")
# else:
#   print("No match")


# #  =================== Try/Catch =============================


try:
    print(x)
except:
    print("An exception occurred")
