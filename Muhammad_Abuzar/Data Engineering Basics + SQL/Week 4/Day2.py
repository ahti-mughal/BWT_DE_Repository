# For Loops

# Looping through a range of numbers
for i in range(5):
    print(i)

# Looping through a range of numbers with a step size
for i in range(1, 10, 2):
    print(i)

# Looping through a list
my_list = [1, 2, 3, 4, 5]
for i in my_list:
    print(i)

# Looping through a dictionary
my_dict = {"name": "John", "age": 25, "is_student": True}
for key, value in my_dict.items():
    print(key, value)

# While Loops

# Basic while loop
i = 0
while i < 5:
    print(i)
    i += 1

# Using a break statement to exit the loop
i = 0
while i < 5:
    print(i)
    i += 1
    if i == 3:
        break

# Using a continue statement to skip an iteration
i = 0
while i < 5:
    i += 1
    if i == 3:
        continue
    print(i)

# Using an else statement to execute code after the loop completes
i = 0
while i < 5:
    print(i)
    i += 1
else:
    print("Loop completed")
