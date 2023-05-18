# 1. priting simple code
print("hello world")

#////////////////////////////////////////////////////////////////////////

# 2. priting shape
print("      / |")
print("     /  |")
print("    /   |")
print("   /____|")

#////////////////////////////////////////////////////////////////////////

# 3. variabales and data
character_name="Tom"  #string   variables initialization
character_age="30"    #int
is_male=False      #bool
print("There was man named"+character_name)
print("He was"+character_age +" yeras old")

character_age="10"
print("He loved his name")
print("But he didnt like that he was"+character_age+" years old")

#////////////////////////////////////////////////////////////////////////

# 4. String in python
print("my\nname")  #next line
print("my\"name")  #after name qoutation marks5

# appneding a string with other one or adding them togther ( string concatenation)
phrase="MYNAME"
print(phrase+ "hello")

#convert data stored in phrase to lower case
print(phrase.lower())
#return true or false value
print(phrase.islower())
#convert to lower and then check if true or false
print(phrase.lower().islower())
# string length
print(len(phrase))
#index of string
print(phrase[1])
#get the index of string
print(phrase.index("M"))
#replace string
print(phrase.replace("MY", "hello"))


#////////////////////////////////////////////////////////////////////////

# 4. NUMBERS
from math import *
#convert num to string
num=5
print(str(num))

print(str(num)+" is my number ")
#print(num +"is ")  wrong

#absolute number
print(abs(num))
#cal num powers
print(pow(3,4))
#print min num bw them
print(min(4,2))
#print max num bw them
print(max(2,3))
#round num
print(ceil(4.5))
#sqrt
print(sqrt(46))

print(floor(num))

#////////////////////////////////////////////////////////////////////////

# 5. input from user
name=input("enter your name")
print("hello" + name + "thankyou")

#////////////////////////////////////////////////////////////////////////

# 6. calculator
num1=input("enter num 1")
print(num1)
num2=input("enter num 2")
print(num2)
#python will always assume the input as string so we need to convret to int
result=int(num1)+int(num2)
result=float(num1) + float(num2)
print(result)

#////////////////////////////////////////////////////////////////////////

# 7 . mad libs game

color= input("enter any color")
noun=input("enter any noun ")
cname=input("enter any celebrity name")

print("roses are " + color)
print(noun+"are blue")
print("i love " + cname)

#////////////////////////////////////////////////////////////////////////





