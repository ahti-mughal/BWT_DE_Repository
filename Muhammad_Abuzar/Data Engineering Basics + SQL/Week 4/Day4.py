# Lambda Functions

# Defining a lambda function to add two numbers
add = lambda x, y: x + y
print(add(2, 3))

# List Comprehensions

# Creating a list of even numbers using a for loop
even_numbers = []
for i in range(10):
    if i % 2 == 0:
        even_numbers.append(i)
print(even_numbers)

# Creating the same list of even numbers using a list comprehension
even_numbers = [i for i in range(10) if i % 2 == 0]
print(even_numbers)

# Generator Expressions

# Creating a generator expression for even numbers
even_numbers_gen = (i for i in range(10) if i % 2 == 0)
print(type(even_numbers_gen))

# Decorators

# Defining a decorator function to add a message before and after a function call
def add_message(func):
    def wrapper(*args, **kwargs):
        print("Before function call")
        result = func(*args, **kwargs)
        print("After function call")
        return result
    return wrapper

# Using the decorator to add a message to a function
@add_message
def add_numbers(x, y):
    return x + y

print(add_numbers(2, 3))

# Context Managers

# Defining a context manager to print a message before and after a code block
class MessagePrinter:
    def __init__(self, message):
        self.message = message
    
    def __enter__(self):
        print(self.message)
    
    def __exit__(self, exc_type, exc_val, exc_tb):
        print("Code block completed")

# Using the context manager to print a message before and after a code block
with MessagePrinter("Before code block"):
    print("Inside code block")

