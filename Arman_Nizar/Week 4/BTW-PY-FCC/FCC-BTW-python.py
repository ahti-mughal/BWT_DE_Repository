# # print("hello world")
# name="Arman Nizar"
# print(name.index("a"))
# print(name.replace("A","z"))
#
# from math import *
#
# print(str((10%3)+2) + " is my fav number")
# print(round(3.55656,2))
# print(ceil(9.221515))

# name= input("enter your name : ")
# print("hello "+ name)

# name=["arman","sadaf","nizar",6,False,2,"may","2001"]
# print(name[1:])
# print(name[-1])
# print(name[1:5])

# name=["arman","nizar","ali","sadaf","sultan","chaudary","Arman"]
# age=[21,2,5,2001,1,1,2002]
# name.extend(age)
# name.append("btw")
# name.insert(3,"allah")
# name.remove("ali")
# name.clear()
# name.pop()
# name.sort()
# name.reverse()
# name2=name.copy()
# print(name.index("sadaf"))
# print(name.count("arman"))
# print(name2)

# tuple      never changeable data
# name=("arman","nizar")
# name[0]="sadaf"
# print(name[1])

# function
# def hi(name):
#     print("hello "+name)
#
# hi("sadaf")

# def square(num):
#     return num*num
#
# print(square(4))

# if / else / elif

# name = "arman"
# age = 21
# if name == "arman" and not(age == 20):
#     print("name arman \nage 20")
#
# elif name == "sadaf" and age == 20:
#     print("name sadaf \nage 20")
#
# elif name == "sadaf" and age == 21:
#     print("name sadaf \nage 21")
#
# elif name == "arman" and age == 21:
#     print("name arman \nage 21")
#
# else:
#     print("wrong input")


# #dictionary
# monthconverstion={
#     "jan" : "january",
#     "feb" : "february",
#     "mar": "march",
#     "apr": "april",
#     "may": "may",
#     "jun": "june",
#     "jul" : "july",
#     "aug": "august",
#     "sep": "september",
#     "oct": "october",
#     "nov": "november",
#     "dec": "december",
# }
# print(monthconverstion["jul"])
# print(monthconverstion.get("cul","invalid input "))



# def translation ( word ):
#     translated = ''
#     for letter in word:
#         if letter in "AEIOUaeiou":
#             translated=translated + "g"
#         else:
#             translated+=letter
#     return translated
# print(translation("ARMAN nizar"))

# # try/catch
# try:
#     value =10/0
#     num=int(input("enter a number = "))
#     print(num)
# except ZeroDivisionError:
#     print("ZERO DIVISION ERROR")
# except ValueError as val:
#     print(val)

# # read file
# file=open("SAMPLE.txt","r")
# print(file.readline())
# print(file.readlines()[1])
# # print(file.readlines())
# file.close()

# class and object
from Students import Student
Students1 = Student("Arman",21,"male")
print(Students1.age)







































