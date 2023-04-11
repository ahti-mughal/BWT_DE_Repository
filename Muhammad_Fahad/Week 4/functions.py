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