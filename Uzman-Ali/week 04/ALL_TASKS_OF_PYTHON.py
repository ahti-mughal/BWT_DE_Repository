#importing important libraries
from math import *

#1-- Print statement
print("   /|")
print("  / |")
print(" /  |")
print("/___|")

#2-- Variables in Python
my_name = "Uzman Ali"
my_age= "23"
print("My name is "+my_name+ ",")
print("My age is "+my_age+".")
print("I do like my name and age")

  # updating variable values
my_name= "Ahmad"
print("he likes the name "+ my_name)

#3-- Different DataTypes in Python
  # String: It's simply a plain text. Data types where you can store any data/text you want.
  # Integer & Float: To store number(23) in a variable we use integer data type and for numbers in points we use call float data type.  E.g below
  
my_age = 23
total_price= 23.43

  # Boolean: It is essentailly a TRUE/FALSE value. Example below
Robert= True | False
print(Robert)

#4-- Working with Strings in Python
phrase = "FC Academy" 
print(phrase +" is chill")
print(phrase.lower())
print(phrase.lower().isupper())
print(phrase.upper().isupper())
print(len(phrase))
print(phrase[0:7])
print(phrase.index('Academ'))
print(phrase.replace('Academy','College'))

#5-- Working with Numbers in Pyhton
my_num= 5
print(my_num)
 # convering number to string
print(str(my_num)+ " my personal number")
 #common functions for variable/numbers
my_num= -5
print(abs(my_num))
print(pow(5,2))
print(max(5,2))
print(min(5,2))
print(round(5.2))
print(round(5.7))

 #access using math library abov
print(floor(5.2)) # it grabs the lowest number
print(ceil(5.2)) # it round the number up no matter what
print(sqrt(5))

#6-- Taking Inputs from Users
name =input("Enter your name: ")
age =input("Enter your age: ")
print("Hi "+ name + "!"+ " enter your age "+ age)

#7-- Building basic calculator 
num1 =float(input("Enter your number1: "))
num2 =float(input("Enter your number2: "))

r = num1 +num2
print(r)

#8-- Mad libs Game
color =(input("Enter your color: "))
noun =(input("Enter your Noun: "))
celebrity =(input("Enter your celebrity: "))

print("Roses are "+ color)
print(noun +" are blue")
print("I hate "+ celebrity)

#9-- Lists
friends = ['ali','wasif','faizan','ohan','zohaib']
 # list indexing
print(friends[1:3])
 #list values altering
friends[1]= 'uzman'
print(friends)

#10-- Lists function
num = [100,3,4,5,6,7,8,10]
friends = ['ali','wasif','faizan','ohan','zohaib']
 # using functions
friends.extend(num)
friends.append(1000)
friends.insert(1, 'one insert here')
friends.remove(1000)
friends.pop()
num.sort()
num.reverse()
num2=num.copy()
print(friends.index('ali'))
print(friends.count('ali'))

print(friends)
print(num2)
friends.clear()
print(friends)

#11-- Tuples
 # They are immutable/unchangable compare to list
 
coor = [(4,5),(1,2),(5,8)]
print(coor)
print(coor[2])

#12-- Functions
def say_hi(name, age):
    print("Hi", name, ", you are", age)

say_hi("uzman", 30)
say_hi("ali", 14)

#13-- Functions return statement

def cube(num):
    return num ** 3
result= cube(14)
print(cube(30))
print(result)

#14-- IF statement
is_male = True
is_tall = False

if is_male and is_tall:
    print("you are tall male")

elif is_male and not(is_tall):
    print("you are short man")

elif not(is_male) and is_tall:
    print("you are not a man but are tall")
    
else:
    print("you are not male nor tall")
    

#15-- IF statements and conditional statements

def max_num(n1, n2, n3):
    if n1 >= n2 and n1 >= n3:
        return n1
    
    elif n2 > n1 and n2 > n3:
        return n2
    
    else:
        return n3

print(max_num(1,23,3))

#16-- Building an Advance Calculator
num1 = float(input("enter the first number: "))
op = input("enter the operator: ")
num2 = float(input("enter the second number: "))

if op == '+':
    print(num1 +num2)


if op == '-':
    print(num1 - num2)


if op == '*':
    print(num1 * num2)


if op == '/':
    print(num1/num2)

#17-- Dictionaries

month_dic = {
    'jan': 'january', 
    'feb':'feburary', 
     3:'march'
}

print(month_dic[3])
print(month_dic.get('fe','In case key is not valid')) #get function specify default values as "NONE"
print(month_dic.get('feb'))

#18-- While loop
i =0
while i <= 10:
    print(i)
    i += 1

print("loop is DONE")

#19-- Building a Guesing Game!

word= 'word'
guess= ""
count= 0
limit= 3
out_of_guess = False
while guess != word and not(out_of_guess):
    if count < limit:
        guess= input("enter your guess: ")
        count +=1
    else:
        out_of_guess = True

if out_of_guess:
    print("You lose! out of guesses")
else:
    print("you win")


#20-- For loop!

number= [1,2,3,4,123]
for numbers in number:
    print(numbers)
   

for numbers in range(123, 130):
    print(numbers)

#21-- Exponent Function!

def exponent(base, power):
    result = 1
    for index in range(power):
        result = result * base
    return result

print(exponent(2, 3))

#22-- 2D List and Nested Loops

number_grid = [
    [1,2,3],
    [4,5,6],
    [7,8,9],
    [0]
]

number_grid[0][2]

for row in number_grid:
    for number in row:
        print(number)

#23-- Build a Translator 

def translator(pharase):
    translate= ""
    for letter in pharase:
        if letter in "aeiouAEIOU":
            translate = translate + "g"
        else:
            translate = translate + letter
        
    return translate

print(translator(input("Enter the pharase: ")))

#24-- Try Except block- catching error in python

try:
    #v = 10/0
    number = int(input("enter the number: "))
    print(number)
except ZeroDivisionError as err:
    print(err)
except ValueError:
    print("invalid value")

# 25-- Reading Files

emp = open("employees.txt", "r")
for employee in emp.readlines():
    print(employee)

emp.close()

# 26-- Writing to Files
 # you can overwrite an existing file
 # you can create a new file by chainging it's name and write into it.
empolyee = open("index.html", "w")

# you can also append/write at the end something in file.
empolyee = open("index.html", "a")

empolyee.write("<h1>this is html page</h1>")

empolyee.close() 

# 27-- Modules and pip

# modules are any external python file/package from which you are Importing functionalities from 

import copy_1

print(copy_1.cube(3))

#28-- Classes and Objects

class Student:
    def __init__(self, name, major, gpa, is_on_probation):
        self.name = name
        self.major = major
        self.gpa = gpa
        self.is_on_probation = is_on_probation
    
    
std1 = Student("hassan", "Software", 3.40, True)

print(std1.name)
         
#29-- Building a Multiple choice Quiz
 # class
class Questions:
    def __init__(self, prompt, answer):
        self.prompt = prompt
        self.answer = answer
        
# array
questions_prompts = [
    "Color od apple?\n(a) Red/Green\n(b) Purple\n(c) Orange\n\n",
    "Color od banana?\n(a) Red\n(b) Yellow\n(c) White\n\n",
    "Color od Strawberry?\n(a) Green\n(b) black\n(c) Red\n\n"

]

# object and string values
questions = [
    Questions(questions_prompts[0], "a"),
    Questions(questions_prompts[1], "b"),
    Questions(questions_prompts[2], "c")
]

# function to run test
def run_tests(questions):
    score = 0
    for question in questions:
        answer = input(question.prompt)
        if answer == question.answer:
            score +=1
    
    print("You got "+ str(score) +"/"+ str(len(questions)) + " correct!")
    
run_tests(questions)

#30-- Object Functions
 # creating functions inside of class to help objects modify information
 
class Student:
    def __init__(self, name, major, gpa):
        self.name = name
        self.major = major
        self.gpa = gpa
    
    def on_honor_role(self):
        if self.gpa >=3.5:
            return True
        else:
            return False
    
    
std1 = Student("hassan", "Software", 3.40)
std2 = Student("ali", "Software", 3.51)

print(std2.on_honor_role())

#31-- Inheretance
class Chef:
    
    def chicken(self):
        print("The chef make chicken")
    
    def salad(self):
        print("The chef make salad")
    
    def special(self):
        print("The chef make pizza fajita")
    

mychef =  Chef()
mychef.chicken()

 # Inheriting functions from parent class "Chef"
 
class PakistaniChef(Chef):
    def special(self):
        print("The chef make biryani")
    
    def daal(self):
        print("The chef make shahi daal")    



myPakistaniChef =  PakistaniChef()
myPakistaniChef.daal()

# -----------------------------------------------END OF TUTORIAL---------------------------------------------------
