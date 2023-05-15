# Declaring the variables of different data types
var1=10 # int variable
var2='Hamza' # String varibale
var3=True # Boolian variable
# Example of taking variable from user.
var4 = int(input("Enter a number: ")) 
# => Input from user is always a string, but we may convert it.
# => this inputed variable is converted using different built-in functions.



# There are two types of conditional statements in python If-statement and If-else statement (/elif-statement)
# Exp: If statement to check whether the number is positive
if x>0:
    print ('x is a positive number')
# Exp: If-else statement to check if the number is positive or non-positive
if number > 0:
    print("It is a positive number.")
else:
    print("It is not a positive number.")
# Exp: The exp of If-elif statement to check the grade based on marks
marks = int(input("Enter your marks: "))
if marks >= 90:
    grade = "A"
elif marks >= 80:
    grade = "B"
elif marks >= 70:
    grade = "C"
elif marks >= 60:
    grade = "D"
else:
    grade = "F"
print("Your grade is", grade)



# Famous DATA STRUCTURES in python are tuple, list, set, dictionary. Some are mutable and some are immutable.
# 1. Tuple:
# A tuple is an immutable collection of objects in Python. It is created using parentheses (). i.e;
tup1 = ("Hamza", "Usman", "Harry")
print(tup1)
# 2. Set:
# A set is an unordered collection of unique objects in Python. 
# It is created using curly braces {} or the set() function.
Set1 = {0, 5, 3, 4}
print(Set1)
# 3. Dictionary:
# A dictionary is a collection of key-value pairs in Python. 
# It is created using curly braces {} and colon : to separate keys and values.
dict1 = {'Id_1': "Hamza", 'Id_2': "Harmain", 'Id_3': "Harry"}
print(dict1)
# List:
# A list is a mutable collection of objects in Python. It is created using square brackets [].
list1 = [1, 2, 3, 4]
print(list1)



# There are two types of loops in python: 1.for loop, 2.while loop
# 1. for loop:
# Exp: It'll Print the number in list1 multiplied by 2.
for number in list1:
    print(number * 2)
# 2. while loop:
# Exp: While loop to print numbers from 0 up to count
count = int(input("Enter a number: "))
i = 0
while i <= count:
    print(i)
    i += 1



# We define the function using def keyword, 
# followed by function name and parameters.
# Exp: Define a function that adds two numbers together
def add_numbers(a, b):
    return a + b
# Calling the function with arguments and printing addition
ans = add_numbers(10, 7)
print(ans)



# Classer and Objects are used to define and create user-defined data types
# => that encapsulate both data (attributes) and functionality (methods).
# 1. A class is a blueprint or a template that have the attributes and methods (functions).
# 2. An object is an instance of a class, 
#    having its own attributes and behaviors(on the attributes and methods of its class).
# Exp: Define a class for a bike
class bike:
    def __init__(self, comp, model, year):  # => Attributes Intialization using constructor
        self.comp = comp
        self.model = model
        self.year = year      
    def manufacturer(self):
        return self.comp
    def the_model(self):
        return self.model
    def year_of_manfact(self)
        return self.year
# Object of the bike class
my_bike = Bike("Trek", "Marlin 5", 2020)
# Use the object to call methods and access attributes
print("My Bike is a", my_bike.manufacturer(), my_bike.the_model(), "made in", my_bike.year_of_manfact())



# Try-Except block is used to handle errors in python
try:
    # code that may raise exception (error)
except #ExceptionType:
    # code to handle the exception


# Module can be imported using "import" keyword
# "as" is used for aliasing.
import pandas as pd
# If the module(or  library) is not install "pip" may help us to install it
pip instal pandas