# A function is a block of code which only runs when it is called. You can pass data, known as parameters, into a function.


def fun():
    print('I am function')

fun()

def fun(name):
    print("Mclaren released it's new " ,name, " model")
fun("765LT")

# Arbitrary Arguments (*args)
#If you do not know how many arguments that will be passed into your function, add a * before the parameter name in the function definition.
def my_function(*args):
    for arg in args:
        print(arg)

my_function(1, 2, 3)

#Arbitrary Keyword Arguments, **kwargs
#If you do not know how many keyword arguments that will be passed into your function, add two asterisk: ** before the parameter name in the function definition.

def my_function(**kwargs):
    for key, value in kwargs.items():
        print(key, value)

my_function(a=1, b=2, c=3)

#default value
def my_function(country = "France"):
  print("I am from " + country)

my_function("Sweden")
my_function("India")
my_function()
my_function("Brazil")

#Passing a list to function
def my_function(food):
  for x in food:
    print(x)

fruits = ["apple", "banana", "cherry"]

my_function(fruits)

# return values
def my_function(x):
  return 5 * x

print(my_function(3))
print(my_function(5))
print(my_function(9))

----------------------------------------
# A lambda function is a small anonymous function. A lambda function can take any number of arguments, but can only have one expression
x = lambda a : a + 10
print(x(5))

x = lambda a, b : a * b
print(x(5, 6))

x = lambda a, b, c : a + b + c
print(x(5, 6, 2))

# Lambda using functions
def myfunc(n):
  return lambda a : a * n

mytripler = myfunc(3)

print(mytripler(11))
--------------------------------------------
list1 = ["london", "berlin", "paris", "geneva", "rome"]
list2 = ["apple", "banana", "cherry"]
list3 = ["london", "berlin", "paris", "geneva"]


print(list1)

print(list1[2])  # Access Index wise

print(list1[-4]) # Negative Indexing

print(list1[0:1]) # Slicing

print(list1[-4:-1])

if "berlin" in list1:
    print('Available')
else:
    print('No')

list1[4] = "zurich"
print(list1)

list1[3:5] = ['madrid','barcelona']
print(list1)

list1[2:5] = ["zurich"]
print(list1)

list1.insert(3, "new york")  # Adding using Index
print(list1)

list1.append("ibiza") # Add at the end of the list
print(list1)

list1.extend(list2) # Extending list
print(list1)

list1.remove("cherry")
print(list1)

list1.pop(5)
print(list1)

del list2

list1.clear()  # Clear lust
print(list1)

for i in list3:
    print(i)

for i in range(len(list3)):
    print(list3[i])

thislist = [100, 50, 65, 82, 23]
thislist.sort()
print(thislist)

thislist.sort(reverse=True)
print(thislist)

def myfunc(n):
  return abs(n - 50)

thislist.sort(key = myfunc)
print(thislist)

thislist.reverse()
print(thislist)

thislist = ["apple", "banana", "cherry"]
mylist = thislist.copy()
print(mylist)

new_list = list(thislist)
print(new_list)