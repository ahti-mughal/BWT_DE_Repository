from math import *
# LIST
course_name=['data eng','fullstack','mernstack','data science','mobile app developer','machine learning']
# for i in course_name:
#   print(i)
print(course_name[-2])
print(course_name[1:3])
print(course_name[1:])
stud_no=[45,12,45,67,80,45]
course_name.append('data analyst')
print(course_name)
course_name.insert(4,'AWS')
print(course_name.index('AWS'))
print(course_name.count('AWS'))
stud_no.sort()
print(stud_no)
stud_no.reverse()
print(stud_no)

st=stud_no.copy()
print(st)

# Tuples
coordinates= [(4,5),(6,7),(9,10)]
print(coordinates[0])
print(coordinates[0][1])

# Functions
def max(a,b):
  if(a>b):
    return a
  else:
    return b
max(2,3)

def sayhi(name):
  print('Hello user ' + name)
sayhi(name='Sheroze')

def square(a):
  b=a*a
  return b
square(4)


# IF ELSE

def max_3(a, b, c):
    if a >= b and a >= c:
        return a
    elif b >= a and b >= c:
        return b
    else:
        return c
max_3(3,7,89)

num1=float(input('ENTER FIRST NUMBER: '))
op=(input('ENTER operator NUMBER: '))
num2=float(input('ENTER second NUMBER: '))
if(op=='+'):
  print(num1+num2)
elif(op=='-'):
  print(num1-num2)
elif(op=='*'):
  print(num1*num2)
elif(op=='/'):
  print(num/num2)
else:
  print('invalid')


# DICTIONARY
DICT={
    'Jan':"January",
    'feb':"Febuary",
    'mar':"March",
    'april':"April",
    'may':"May",
}
print(DICT.get('Jan'))

