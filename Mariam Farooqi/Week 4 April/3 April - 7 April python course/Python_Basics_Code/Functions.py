# 11. functions

def say_hi(name , age):
    print("hello" + name + " , you are "+str(age))

say_hi("steve", 65)

#/////////////////////////////////////////////////////////////////////
# 12.return statement

def sum(n):
     return n+n+n

print(sum(10))

#/////////////////////////////////////////////////////////////////////
# 13. if else

is_male=False
is_tall=False

if is_male or is_tall:
     print("im male or tall or both")

elif is_male and not(is_tall):
    print("you are tall male")

elif is_tall and not(is_male):
    print("you r male")

else:
    print("female")

#/////////////////////////////////////////////////////////////////////
# 14. if else using operators

def call(n1, n2 , n3):
    if(n1>=n2) or (n1>n3):
        return n1
    elif (n2 >= n1) or (n2 > n3):
        return n2
    else:
        return n3

print(call(2,3,4))

#/////////////////////////////////////////////////////////////////////
# 15. building a calculator

n1=input("enter num 1 ")
n2=input("enter num 2 ")
op=input("enter operator")

def func(n1,n2):
    if(op=="+"):
        return n1+n2
    elif(op=="-"):
        return n1 - n2
    elif(op == "*"):
        return n1 * n2
    elif(op == "/"):
        return n1 / n2
    else:
        print("nothing sleected")

print(func(2,3))
