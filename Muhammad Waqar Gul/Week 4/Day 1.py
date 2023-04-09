# ------ Variables
x = 5
name = 'Waqar'
print(x)
print(name)

#Type Casting
x = 5
y = 10
z = 'Waqar'

x = float(x)
y = int(y)
z = str(z)

print(type(x))
print(type(y))
print(type(z))

#Assigning Multi values 
x, y, z = "Karaxhi", "Lahore", "Jeddah"
print(x)
print(y)
print(z)

x = y = z = "Islamabad"
print(x)
print(y)
print(z)
#Unpacking
cities = ["Islamabad","Munich","Riyadh"]
x,y,z = cities
print(x)
print(y)
print(z)

#Global Variables
x = 32
def new_fun():
    print("PK736 is", x,"mins late")
new_fun() 

def myfun():
    global icao
    icao = "ISB"
myfun()
print( "Islamabad International", icao)

# ------ Data Types 
v1 = "Data Engineering"
print(type(v1)) #string

v2 = 20
print(type(v2)) #int

v3 = 35.2
print(type(v3)) #float

v4 = 2j
print(type(v4)) #complex 

v5 = ["Islamabad", "Munich", "Jeddah"]
print(type(v5)) #list

v6 = ("Islamabad", "Munich", "Jeddah")
print(type(v6)) #tuple

v7 = {"Islamabad", "Munich", "Jeddah"}
print(type(v7)) #set

v8 = True
print(type(v8)) #boolean

v9 = range(5)
print(type(v9)) #range

# Setting specific data type
x1 = "Bytewise Limited"
print(str(x1),"/", type(x1))

x2 = 20
print(int(x2), "/", type(x2))

x3 = 1j
print(complex(x3), "/", type(x3))

x4 = list(("Islamabad", "Munich", "Jeddah"))
print(type(x4))

x5 = set(("Islamabad", "Munich", "Jeddah"))
print(type(x5))

x6 = tuple(("Islamabad", "Munich", "Jeddah"))
print(type(x6))

x7 = dict(name="Fahad", age=23)
print(type(x7))

x8 = bool(5)
print(type(x8))

#Python Random
import random
print(random.randrange(1,10))

# ------ Strings
name = "Bytewise Limited, Islamabad"

print(name)

#Looping
for x in name:
    print(x, end=" ") 

#Lenght
print(len(name))

#Checking
print("Limited" in name)

#using if
if "Islamabad" in name:
    print('Islamabad exists in text')
else:
    print('No match found')

#Slicing of Strings
print(name)
print(name[2:5]) #tew
print(name[:12]) #Bytewise Lim
print(name[4:]) #wise Limited, Islamabad
print(name[:-1]) #Bytewise Limited, Islamaba
print(name[-9:-5]) #Isla

# String Modification
print(name.upper()) #upper case
print(name.lower()) #lower case
print(name.strip()) #remove whitespaces
print(name.replace(" ", "_")) #replace string
print(name.split(",")) #split string

# String formatting
price = 1200
txt = "MacBook Air costs around ${}"
print(txt.format(price))

# ------ Boolean Operators
print(10 > 9)
print(10 == 9)
print(10 < 9)

a = 200
b = 33

if b > a:
  print("b is greater than a")
else:
  print("b is not greater than a")

print(bool("Hello"))
print(bool(15))


-----------------------------------------------------------
# If 
a = 33
b = 200
if b > a:
  print("b is greater than a")

#Elif
a = 33
b = 33
if b > a:
  print("b is greater than a")
elif a == b:
  print("a and b are equal")

#Else
a = 200
b = 33
if b > a:
  print("b is greater than a")
elif a == b:
  print("a and b are equal")
else:
  print("a is greater than b")

# Short Hands
#If 
if a > b: print("a is greater than b")
#If-Else
print("A") if a > b else print("B")

#Using Operators
# AND
a = 200
b = 33
c = 500
if a > b and c > a:
  print("Both conditions are True")

# OR
a = 200
b = 33
c = 500
if a > b or a > c:
  print("At least one of the conditions is True")

# NOT
a = 33
b = 200
if not a > b:
  print("a is NOT greater than b")

# Nested If
x = 41

if x > 10:
  print("Above ten,")
  if x > 20:
    print("and also above 20!")
  else:
    print("but not above 20.")