from math import *

# Drawing Shape

print("    /\\")
print("   /  \\")
print("  /    \\")
print(" /______\\")

# String FUNCTIONS
phrase = animal
print(phrase + " boggyman")
print(phrase.upper())
print(phrase.isupper())
print(phrase.upper().isupper())
print(len(phrase)) 
print(phrase[0])
print(phrase.index(animal)) 
print(phrase.replace(animal, "elephant"))

# Numeric FUNCTIONS
number = 90
print(abs(number))
print(pow(4, 66))
print(min(23, 4))
print(max(44, 2))
print(round(55.980))
print(sqrt(9.982))
print(ceil(2.982))
print(floor(10.982))

# Take input from user
name = input("Enter your name: ")
print("Hola " + name)

# Type casting from string to float
num1 = float(input("Enter your 1st number: "))
num2 = float(input("Enter your 2nd number: "))
result = num1 + num2
print(result)

# Building Mad Lib Game in Python
adjective = input("Enter an adjective: ")
noun = input("Enter a noun: ")
verb = input("Enter a verb: ")
print("The " + adjective + " " + noun + " " + verb + "s.")
print("It's really " + adjective + "!")
print("I can't believe I'm " + verb + "ing a " + noun + " right now!")




# Creating a list of fruits
fruits = ["apple", "banana", "cherry", "date"]

# Accessing list items
print(fruits[0])  # Output: apple
print(fruits[-1])  # Output: date

# Slicing list
print(fruits[1:])  # Output: ['banana', 'cherry', 'date']
print(fruits[:3])  # Output: ['apple', 'banana', 'cherry']
print(fruits[1:3])  # Output: ['banana', 'cherry']

# Modifying list items
fruits[2] = "orange"
print(fruits)  # Output: ['apple', 'banana', 'orange', 'date']

# Adding items to a list
fruits.append("grape")
print(fruits)  # Output: ['apple', 'banana', 'orange', 'date', 'grape']

# Inserting items to a list
fruits.insert(2, "mango")
print(fruits)  # Output: ['apple', 'banana', 'mango', 'orange', 'date', 'grape']

# Removing items from a list
fruits.remove("banana")
print(fruits)  # Output: ['apple', 'mango', 'orange', 'date', 'grape']

# Pop an item from the list
fruits.pop()
print(fruits)  # Output: ['apple', 'mango', 'orange', 'date']

# Clearing the entire list
fruits.clear()
print(fruits)  # Output: []

# Count the occurrences of an item in the list
fruits = ["apple", "banana", "cherry", "date", "banana"]
print(fruits.count("banana"))  # Output: 2

# Sorting and reversing the list
fruits = ["date", "banana", "cherry", "apple"]
fruits.sort()
print(fruits)  # Output: ['apple', 'banana', 'cherry', 'date']
fruits.reverse()
print(fruits)  # Output: ['date', 'cherry', 'banana', 'apple']

# Copying a list
fruits_copy = fruits.copy()
print(fruits_copy)  # Output: ['date', 'cherry', 'banana', 'apple']



#Dictionary
vowels = {
    "a": "Alpha",
    "e": "Echo",
    "i": "India",
    "o": "Oscar",
    "u": "Uniform"
}

print(vowels["a"])
print(vowels.get("e"))
print(vowels.get("z", "Not a valid key"))

# Guess Game:
guess_count = 0
guess_limit = 3
out_of_guesses = False
secret_word = "hola"
guess = ""

while secret_word != guess and not(out_of_guesses):
    if guess_count < guess_limit:
        guess = input("Enter Your Guess: ")
        guess_count += 1
    else:
        out_of_guesses = True
        
if out_of_guesses:
    print("You are out of guesses, You LOSE")
else:
    print("You win")


#for Loop in Python
fruits = ["apple", "banana", "cherry"]
for fruit in fruits:
    print(fruit)
#2
fruits = ["apple", "banana", "orange"]
for i, fruit in enumerate(fruits):
    print(f"{i}: {fruit}")
#3
grades = {"Alice": 90, "Bob": 85, "Charlie": 95}
for name, grade in grades.items():
    print(f"{name} scored {grade} on the test.")

#printing the elements in list
fruits = ['apple', 'banana', 'orange', 'grape']
for fruit in fruits:
    print(fruit)
# Try Except in Python
try:
    x = int(input("Enter a number: "))
    y = int(input("Enter another number: "))
    z = x / y
    print(z)
except ZeroDivisionError:
    print("Cannot divide by zero.")
except ValueError:
    print("Please enter a valid integer.")
except:
    print("An error occurred.")

#Reading Files
file = open('example.txt', 'r')
contents = file.read()
print(contents)
file.close()

file = open('example.txt', 'r')
for line in file:
    print(line.strip())
file.close()

# Function to check if file is readable
def check_file_readability(file_name):
    try:
        with open(file_name, 'r') as f:
            f.read()
    except IOError:
        print(f"Error: {file_name} is not readable")
    else:
        print(f"{file_name} is readable")

# Function to write into a file
def write_to_file(file_name, data):
    with open(file_name, 'w') as f:
        f.write(data)
    print(f"Data written to {file_name} successfully")

# Function to create new html file
def create_html_file(file_name):
    with open(file_name, 'w') as f:
        f.write("<html>\n<head>\n<title>My Webpage</title>\n</head>\n<body>\n\n</body>\n</html>")
    print(f"{file_name} created successfully")

# Importing other Python files
import my_module

# Multiple Choice Question
print("What is the capital of India?")
options = ["Delhi", "Mumbai", "Chennai", "Kolkata"]
for i, option in enumerate(options):
    print(f"{i+1}. {option}")
user_input = input("Enter your choice (1-4): ")
try:
    choice = int(user_input)
    if choice < 1 or choice > 4:
        raise ValueError
except ValueError:
    print("Invalid input. Please enter a number between 1 and 4")
else:
    if options[choice-1] == "Delhi":
        print("Congratulations! Your answer is correct")
    else:
        print("Oops! Your answer is incorrect")
#classes
class Animal:
    def __init__(self, name, age):
        self.name = name
        self.age = age
        
    def make_sound(self):
        print("The animal makes a sound.")
        
class Dog(Animal):
    def __init__(self, name, age, breed):
        super().__init__(name, age)
        self.breed = breed
        
    def make_sound(self):
        print("The dog barks.")
        
class Cat(Animal):
    def __init__(self, name, age, color):
        super().__init__(name, age)
        self.color = color
        
    def make_sound(self):
        print("The cat meows.")
        
dog1 = Dog("Max", 5, "Golden Retriever")
cat1 = Cat("Whiskers", 3, "Grey")
animals = [dog1, cat1]

for animal in animals:
    print(animal.name)
    animal.make_sound()


