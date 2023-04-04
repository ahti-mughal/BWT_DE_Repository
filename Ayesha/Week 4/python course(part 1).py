from math import *
# Drawing Shape
print("      /|")
print("    /  |")
print("  /    |")
print("/______|")

#String FUNCTIONS
phrase ="giraffe"
print(phrase +"is best academy")
print(phrase.upper()) # convert the string to upercase letters
print(phrase.isupper()) # Check the string is in upercase letters
print(phrase.upper().isupper()) # convert the string to upercase letters then Check taht the string is in upercase letters or not
print(len(phrase)) # return length of string
print(phrase[0])  # return elemnt at 0 index
print(phrase.index("giraf")) # return index of string
print(phrase.replace("giraffe","elephant")) # replace the  "giraffe" with the "elephant"

#Numeric FUNCTIONS
my_num= -5
print(abs(my_num))
print(pow(3,2))
print(min(3,2))
print(max(3,2))
print(round(3.782))
print(sqrt(3.782))
print(ceil(3.782))
print(floor(3.782))

# Take input from user
name= input ("Enter your number")
print("Hello" +name +"!")

#Type casting from string to float
num1=float(input ("Enter your 1st number"))
num2=float(input ("Enter your 2nd number"))
result= num1+num2
print(result)

# Building Mad Lib Game in Python
color = input ("Enter color")
Plural_noun = input ("Enter Plural_noun")
celebrity =input ("Enter celebrity")
print("Roses are " +color)
print(Plural_noun+" are blue")
print("I love "+celebrity)

#Lists in Python
#List is a data type that is used to store multiple items in a single variable. List items are ordered, changeable, and allow duplicate values.
friends= ["kiran" ,"kamal","zimal","romi" ,"ali","umair"]
print(friends[2])
print(friends[-1])#return last item in index
print(friends[1:])#return from 1st index to last item in index
print(friends[:3])#return from 1st index to 3rd item in index
print(friends[1:3])#return from 1st index to 3rd item in index
friends[3]="virat" #modify value at 3rd index

lucky_number = [5,8,9,3,2,8]
friends.extend(lucky_number)
friends.append(3) #append values at last of the list 
friends.insert(3,"kelly") #insert value at 3rd index
print("kelly" in friends) #check weather "kelly" is in list or not
friends.index("kelly") #check  "kelly" is present in which index
friends.remove('zimal') #remove value specified from list
friends.pop() #remove values from last of the list
friends.clear() # delete all the items from list
print(friends)
lucky_number.count(8) # count the occurence of 8 in list
lucky_number.sort()   # arrange elements in list
lucky_number.reverse() # reverse elements in list
friends2= friends.copy() # make copy of list
print(friends2)

coordinate =(3,7)
#coordinate[0]=1 # cant support assignment
print(coordinate[0])

# User Defined Functions in Python
# Single argumnet function in Python
def sayhi(name):
     print("hello" +name )

print(sayhi("mike"))

# Multiple argumnet function in Python
def sayhi(name,age):
     print("hello" +name +"your age"+str(age ))

sayhi("mike",34)

# Return Statement in Python
def cube (num):
    return num*num*num

print(cube(4))
result= cube(4)
print(result)

# Control Statements in Python
istall=False
ismale =False
if ismale or istall :
    print("You are male or tall " )
elif ismale and istall :
    print("You are tall male" )
elif ismale and not(istall) :
    print("You are male but not tall" )
else:
    print("you are neither male nor tall")
    
# function to find max number using Comaprison Operator
def max_num(num1,num2,num3):
    if num1>num2 and num1>num3:
        return(num1)
    elif num2>num1 and num2>num3:
        return (num2)
    else:
        return (num3)

print(max_num(21,3,6))

#Simple calculator
num1=float(input ("Enter your 1st number"))
operator= input ("Enter operator")
num2=float(input ("Enter your 2nd number"))
if operator =="+":
    print(num1+num2)
elif operator =="-":
    print(num1-num2)
elif operator =="/":
    print(num1/num2)
elif operator =="*":
    print(num1*num2)
else:
    print("Invalid opeartor")
