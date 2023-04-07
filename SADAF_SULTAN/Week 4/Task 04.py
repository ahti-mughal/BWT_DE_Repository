import random
import useful_tools

from student import student

# Try Except

try:
    number = int(input("enter a number"))
    print(number)
except:
    print(" invalid Input")

# another example of try catch
try:

    ans = 10 / 0
    numb = int(input(" Enter a number: "))
    print(numb)
except ZeroDivisionError as err:
    print(err)
    print("Divided by zero")
except ValueError:
    print(" invalid input")

# Reading Files
# ---> reading files outside of python like css,xml--> we will do reading file opening file closing file
# --- r for reading file
open("employee.txt", "r")
employee_file = open("employee.txt", "r")

employee_file.close()
# how we get information bys using file by using readable function

employee_file = open("employee.txt", "r")
print(employee_file.readable())  # its return a boolean value

# readline command practice
employee_file = open("employee.txt,", " r ")
print(employee_file.readline())
print(employee_file.readline())
print(employee_file.readline())
print(employee_file.readline())
employee_file.close()
# also can use this function with for loop
employee_file = open("employee.txt", " r ")
for employee in employee_file.readlines():
    print(employee)
employee_file.close()

# writing a File

employee_file = open("employee.txt", " a ")
print(employee_file.write("asad --- human resources "))
employee_file.close()

employee_file = open("employee.txt", " w ")
print(employee_file.write(" zain --- Customer service"))
employee_file.close()

employee_file = open("employee.html", " w ")
print(employee_file.write("<p> this is my practice web page </p>"))
employee_file.close()

# modules and pip

feet_in_mile = 5280
meters_in_kilometer = 1000
beatles = [" john ibrahim", " salman khan", " shivin nagran"]

# modules and pip

# import random

feet_in_mile = 5280
meters_in_kilometer = 1000
beatles = [" john ibrahim", " salman khan", " shivin nagran"]


def get_file_ext(filename):
    return filename[filename.index(".") + 1:]


def roll_dice(num):
    return random.randint(1, num)


# execute
#import useful_tools

print(useful_tools.roll_dice(10))

# Classes and Objects


#from student import student

Student1 = student("saddi", "bb", 3.1, False)
Student2 = student("adaf", "art", 3.2, True)


print(Student1.name)
print(Student2.name, Student2.major)
