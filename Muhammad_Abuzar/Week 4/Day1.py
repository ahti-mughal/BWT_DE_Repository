# Variables and Data Types

# Creating variables and assigning values
x = 5
y = 2.5
name = "John"
is_student = True

# Printing variables
print(x)
print(y)
print(name)
print(is_student)

# Basic arithmetic operations
a = 10
b = 3
print(a + b)  # Addition
print(a - b)  # Subtraction
print(a * b)  # Multiplication
print(a / b)  # Division
print(a % b)  # Modulus (remainder of division)

# Data Types
# Integer
x = 5
print(type(x))

# Float
y = 2.5
print(type(y))

# String
name = "John"
print(type(name))

# Boolean
is_student = True
print(type(is_student))

# Lists
my_list = [1, 2, 3, "four", True]
print(my_list[0])  # Accessing first element
print(my_list[3])  # Accessing fourth element

# Dictionaries
my_dict = {"name": "John", "age": 25, "is_student": True}
print(my_dict["name"])  # Accessing value with key "name"
print(my_dict["age"])  # Accessing value with key "age"
print(my_dict["is_student"])  # Accessing value with key "is_student"

# Control Flow Statements
# If statement
x = 5
if x > 0:
    print("Positive")

# If-else statement
x = -2
if x > 0:
    print("Positive")
else:
    print("Negative")

# If-elif-else statement
x = 0
if x > 0:
    print("Positive")
elif x < 0:
    print("Negative")
else:
    print("Zero")

# Loops
# For loop
my_list = [1, 2, 3, 4, 5]
for x in my_list:
    print(x)

# While loop
i = 1
while i <= 5:
    print(i)
    i += 1
