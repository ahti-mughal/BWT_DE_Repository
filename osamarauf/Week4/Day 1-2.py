# Week4 Day1 & 2
# --Varibles & Data Types
# In Python data type of variable is defined in run time
person_name = 'Osama'
person_age = 22
is_single = True
print(type(person_name), type(person_age), type(is_single))

# --Strings
upper_case = person_name.upper()
last_name = ' Rauf'
full_name = upper_case+last_name
print(full_name)

get_character = full_name[0:3]
print(get_character)

check_char = 'A'
if (full_name.index(check_char)):
    print('exist')
else:
    print('Not found')

# Numbers

person1_marks = 890
person2_marks = 1100
person3_marks = -78
max_num = max(person1_marks, person2_marks)
abs_num = abs(person3_marks)
mod = person1_marks % person2_marks


# User Input
# For string
name = input("Enter Name: ")
# For Numbers
num = int(input("Enter you marks: "))
print(f'My name is {name} and I obtain {num}')

# List
student_marks = [45, 67, 78, 98]
print(student_marks[1])  # Specific Index

# variable_list

var_list = [23, 'Osama', True]
print(f'Name is {var_list[1]} and age is {var_list[0]}')

student_marks[2] = 71
print(student_marks)
another_list = [43, 90]
student_marks.extend(another_list)
print(student_marks)
var_list.remove('Osama')
print(var_list)

# Tuple

my_tuple = ('apple', 'cherry')
my_tuple[1]
# my_tuple[1] = 'orange' Will result in error cuz tuples can not be modify
my_tuple2 = ('banana', 'Mango')
concat = my_tuple + my_tuple2
print(concat)
print(len(concat))

# Functions

def function(func, num):
    return func(num)

def sqaure(number):
    return number ** 2


return_val = function(sqaure, 3)

# IF/ELSE
if (return_val==9):
    print('Correct Value')
else:
    print('Try again')
    
def max(num1, num2):
    if num1>num2:
        print('Max is Num1')
    else:
        print('Max is Num2')
        
print(max(3, 4))