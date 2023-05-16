
#print and input statements
print("Data Engineering")
print("*----")
print(" ||||")
print("*" * 10)
price = 10             #integer type variable
rating = 4.9           #floating type variable
name = 'Aabra'         #string type variable
is_published = True    #Boolean type variable
print(price)
print(rating)
print(name)
print(is_published)
full_name = 'Jhon Smith'
age = 20
is_new = True
print('Full Name=', full_name)
print('Age=', age)
print('New Patient=', is_new)
name = input('What is your Name? ')
print('Hi ' + name)
name = input('What is your Name? ')
color = input('What is your favourite color? ')
print(name + ' likes ' + color)

#Type Conversion
birth_year = input('Enter your birth year ')
age = 2021 - int(birth_year)
print(age)

birth_year = input('Enter your birth year ')
print(type(birth_year))
age = 2021 - int(birth_year)
print(type(age))
print(age)

weight_lbs = input('Enter weight in pounds')
weight_kg = float(weight_lbs) * 0.45
print(weight_kg)


#Strings
course = "Python's Course for Beginners"
print(course)
course = 'Python Course for "Beginners"'
print(course)
course = ''' 
Hi Jhon,
Here is our first email to you
Thank you
The Support Team
'''
print(course)
course = 'Pythone Course for Begineers'
print(course[0])
print(course[5])
print(course[-1])
print(course[-2])
print(course[0:3])
print(course[6:10])
print(course[0:])
print(course[1:])
print(course[:5])
print(course[:])
course = 'Pythone Course for Begineers'
another = course[:]                        #2nd variable is the copy of 1st variable
print(another)
name = 'Jennifer'
print(name[1:-1])


#Formatted Strings
first = "Data"
last = "Engineering"
message = first + ' [' + last + '] is a field'         #string concatenation
print(message)
       #same as above with different and efficient method
msg = f'{first} [{last}] is a field'          #formatted string(formatted string is one which that is prefix with f)
print(msg)
#with formatted string we can easily realize what the output looks like


#String Methods
course = 'Python for Beginners'
print(len(course))     #general purpose function for counting for counting numbers of sttings
print(course.upper())      #specific function OR method
print(course)
print(course.lower())
print((course.find('P')))      #to find character or sequence of character in a string, find method is used
print((course.find('o')))
print((course.find('Beginners')))
print((course.replace('Beginners', 'Absolute Beginners')))    #replacing a character or a sequence of a characters
print((course.replace('P', 'J')))
print('Python' in course)     #to check existance of a character or sequence of characters in a string, in operator is being used
print('python' in course)
#difference between find operator and in method;
#find method returns the index of character or sequence of character BUT in operator produces the boolean value


#Arithmetic Operations
print(10 + 3)       #Addition
print(10 - 3)       #Subtraction
print(10 * 3)       #Multiplication
print(10 / 3)       #Division...it gives value in float number
print(10 // 3)      #Division...it gives value in integer number
print(10 % 3)       #Modulus...remainder
print(10 ** 3)      #Exponent...power(10 power 3)


#Augmented Assignment Operators:
x = 10
x = x + 3   #increment
x += 3   #same functioning as above statement...augmented assignment operator is a way to write the same code but in a shorter form
x -= 3
print(x)


#Operator Precedence
x = 10 + 3 * 2    #must to follow order of precedence...
print(x)
                  #order of precedence is:
                  #paranthesis
                  #exponention...2 ** 3
                  #multliplcation or division
                  #addition or subtraction
x = 10 + 3 + 2 ** 2
print(x)
x = (10 + 3) * 2 ** 2
print(x)

x = (2 + 3) * 10 - 3
print(x)


#Math Functions
import math
print(math.ceil(2.9))
print(math.floor(2.9))
x = 2.9
print(round(x))     #round off function
print(abs(-3.2))       #absolute function...always returns positive value


#If Statements
is_hot = True

if is_hot:
    print("It's a hot day")
    print("Drink plenty of water")
else:
    print("It's a cold day")
    print("Wear warm clothes")
print("Enjoy your day")
print("  ")


is_hot = False

if is_hot:
    print("It's a hot day")
    print("Drink plenty of water")
else:
    print("It's a cold day")
    print("Wear warm clothes")
print("Enjoy your day")
print("  ")


is_hot = False
is_cold = False

if is_hot:
    print("It's a hot day")
    print("Drink plenty of water")
elif is_cold:
    print("It's a cold day")
    print("Wear warm clothes")
else:
    print("It's a lovely day")
print("Enjoy your day")
print("  ")


#price of a house = 1M
#If buyer has good credit,
    #They need to put down 10%
#Otherwise
    #They need to put down 20%
#Print the downpayment
house_price = 1000000
has_good_credit = True

if has_good_credit:
    down_payment = 0.1 * house_price
else:
    down_payment = 0.2 * house_price
print(f"Down Payment = ${down_payment}")


#Logical Operators
# if an applicant has high income AND good credit
    # Eligible for loan

has_high_income = True
has_good_credit = True

if has_high_income and has_good_credit:    # both conditions must be true in logical AND operator
    print("Eligible for loan")
print(" ")


# if an applicant has high income OR good credit
    # Eligible for loan

has_high_income = True
has_good_credit = False

if has_high_income or has_good_credit:    # at least one should be true in logical OR operator
    print("Eligible for loan")
print(" ")


# if an applicant has good credit and doesn't have a criminal record
    # Eligible for a loan

has_good_credit = True
has_criminal_record = False

if has_good_credit and not has_criminal_record:        # NOT operator inverses any boolean value
    print("Eligible for loan")
print(" ")

has_good_credit = True
has_criminal_record = True

if has_good_credit and not has_criminal_record:
    print("Eligible for loan")
else:
    print("Not Eligible for loan")


#Comparison Operators
temperature = 30

if temperature > 30:
    print("it's a hot day")
else:
    print("it's not a hot day")
print(" ")

temperature = 35

if temperature > 30:
    print("it's a hot day")
else:
    print("it's not a hot day")
print(" ")


# if name is less than 3 characters long
    # name must be at least 3 characters
# otherwise if it's more than 50 characters long
    # name can be maximum of 50 characters
# otherwise
    # name looks good

name = "Aabra Malik"

if len(name) < 3:
    print("name must be at least 3 characters long")
elif len(name) > 50:
    print("name can be maximum of 50 characters long")
else:
    print("name looks good")


#PROJECT: Weight Converter
weight = int(input("Enter your weight: "))
unit = input("(L)bs or (K)g: ")

if unit.upper() == "L":
    converted = weight * 0.45
    print(f"you are {converted} kilos")
else:
    converted = weight / 0.45
    print(f"you are {converted} pounds")


#While Loops
# while condition:
    # ...

i = 1
while i <= 5:
    print(i)
    i = i + 1
print("Done")


i = 1
while i <= 5:
    print("*" * i)
    i = i + 1


#Guessing Game
# using while loop to build a secret game.
# We have a secret number which is currently set to 9.
# Computer will ask to make a guess

secret_number = 9
guess_count = 0
guess_limit = 3
while guess_count < guess_limit:
    guess = int(input("Guess: "))
    guess_count += 1
    if guess == secret_number:
        print("You win!")
        break
else:
    print("Sorry you failed")


#Car Game
command = ""
started = False
while True:
    command = input(">").lower()
    if command == "start":
        if started:
            print("Car is already started!")
        else:
            started = True
            print("Car Started...")
    elif command == "stop":
        if not started:
            print("Car is already stopped!")
        else:
            started = False
            print("Car Stopped.")
    elif command == "help":
        print("""
start - to start the car
stop - to stop the car
quit - to quit 
        """)
    elif command == "quit":
        break
    else:
        print("Sorry I don't understand the command")


#For Loops
for item in 'Python':
    print(item)
print("")

for item in ['Mosh', 'John', 'Sarah']:
    print(item)
print("")

for item in [1, 2, 3, 4]:
    print(item)
print("")

for item in range(10):
    print(item)
print("")

for item in range(5, 10):
    print(item)
print("")

for item in range(5, 10, 2):
    print(item)
print("")

prices = [10, 20, 30]
total = 0
for price in prices:
    total += price
print(f"Total Price: {total}")


#Nested Loops
for x in range(4):
    for y in range(3):
        print(f'({x}, {y})')
print("")

numbers = [5, 2, 5, 2, 2]      # printing of word F
for x_count in numbers:
    output = ''
    for count in range(x_count):
        output += 'x'
    print(output)
print("")

numbers = [2, 2, 2, 2, 6]       # printing of alphabet L
for x_count in numbers:
    output = ''
    for count in range(x_count):
        output += 'x'
    print(output)


#Lists
names = ['John', 'Bob', 'Mosh', 'Sarah', 'Mary']
print(names)
print(names[0])
print(names[4])
print(names[-1])
print(names[-2])
print(names[2:])
names[0] = 'Jon'
print(names)
print("")

# find the largest number in the list
List = [2, 9, 5, 1, 6]
max = List[0]
for number in List:
    if number > max:
        max = number
print(f"Maximum number = {max}")


#2D Lists
matrix = [                 # [           #matrix
    [1, 2, 3],             #   1 2 3
    [4, 5, 6],             #   4 5 6
    [7, 8, 9]              #   7 8 9
]                          #  ]

print(matrix[0][1])
matrix[0][1] = 20
print(matrix[0][1])
print("")
for row in matrix:
    for item in row:
        print(item)


#List Methods
numbers = [2, 5, 1, 9, 7]
numbers.append(20)             # add value at the end
print(numbers)
numbers.insert(0, 20)          # add value at the index where you want
print(numbers)
print(numbers.count(20))       # will count that how many times number appear in list
numbers.sort()                 # sort all values
print(numbers)
numbers.reverse()              # reverse the list after sorting
print(numbers)
numbers.remove(5)              # remove value from a list
print(numbers)
numbers.pop()                  # remove last item from the list
print(numbers)
print(numbers.index(9))        # checking index of the item
print(2 in numbers)            # checking existing of the item
print(49 in numbers)
numbers2 = numbers.copy()      # copy of original list(numbers2 is the copy of numbers),
                               # if we made any changing to original list this will not going to impact on our 2nd list
print(numbers)
numbers.clear()                # clear all the list(delete every value)
print(numbers)


# remove duplicates in the list
List = [2, 4, 2, 5, 3, 4, 2, 6, 6]
uniques = []
for number in List:
    if number not in uniques:
        uniques.append(number)
print(uniques)


#Tuples
numbers = (1, 2, 3)
print(numbers[0])
# Tuples can't support modification, we can't change any value in tuples
# Tuples are immutable
# Lists are better than tuples but when there is no need of any modification tuples are better to use


#Unpacking
coordinates = (1, 2, 3)   # unpacking with tuples
x, y, z = coordinates
print(y)

# we can do unpacking with lists as well
coordinates = [1, 2, 3]
x, y, z = coordinates
print(z)


#Dictioniries
customer = {
    "name": "John Smith",
    "age": 19,
    "is_verified": True
}
print(customer["name"])
# key name must be same as given in the dictionary otherwise it will generate an error
print(customer.get("age"))
# by using get function we will not get the key error by entering wrong key
print(customer.get("birthdate"))
print(customer.get("birthdate", "Jan 1 1980"))
customer["name"] = "Jack Smith"   # name updated
print(customer)
customer["birthdate"] = "Jan 1 1980"    # addition of new key
print(customer)

