# MAD LIBS

color = input(" enter a color:")
plural_noun = input(" enter  a plural noun :")
celebrity = input(" enter a celebrity:")

print(" roses are " + color)
print(plural_noun + "are blue")
print(" i love " + celebrity)

# list

Friends = ["sadaf", "adeela", "samra", "sadia", "hiba"]
print(Friends)
print(Friends[1])
print(Friends[-1])
print(Friends[1:])
# specified a range
print(Friends[1:3])
Friends[1] = "momina"

lucky_number = [3, 4, 12, 13, 15, 42]
Friends.extend(lucky_number)
print(Friends)
# add name into list
Friends.append("maimona")
print(Friends)
Friends.insert(2, "zain")
print(Friends)
Friends.remove("maimona")
print(Friends)

# pop is also used to remove last element in the list
Friends.pop()
print(Friends)
Friends.clear()
print(Friends)
print(Friends.index("sadaf"))
# count tells the no of elements in before the selected no
print(Friends.count("adeela"))

lucky_number.sort()
print(lucky_number)

lucky_number.reverse()
print(lucky_number)

Friends2 = Friends.copy()
print(Friends2)

# TUPLES
#     similar to list
#   --> tuples can't be changed and modify once we create our tuple
#   ---> people use the tuple when they don't want  to change data
coordinates = (4, 5)
print(coordinates[0])
print(coordinates[1])
# ---> create a list of tuple
coordinates = [(4, 5), (6, 7), (5, 7)]
print(coordinates[0])
print(coordinates[1])


# FUNCTION ----> Collection of code which perform a specific task ----> functions really help you to organize your
# code a lot better they allow you to kind of break up your code into different ----> when we type def  its mean e
# need to give name to a function ----> anything within the function is indented
def say_hi():
    print(" Hello dear")


print("TOP")
say_hi()
print("Bottom")


# parameters of function
def say_hi(name, age):
    print(" Hello " + name + ", you are " + age + " old ")


say_hi("sadaf", 35)
say_hi("aamir", 35)


# RETURN STATEMENT
# ----> get information back from function
def cube(num):
    return num * num * num


result = cube(4)
print(result)

# IF Statement

is_male = True
is_tall = True

if is_male or is_tall:
    print(" you are a male or tall or both ")
else:
    print(" you are neither male nor tall ")

if is_male and is_tall:
    print(" you are a tall male  ")
else:
    print(" you are either not a male or not  tall or both")

#    ----->  nested if
if is_male or is_tall:
    print(" you are a male or tall or both ")
elif is_male and not is_tall:
    print(" you are a short male")
elif not is_male and is_tall:
    print(" You are not a male but are tall")
else:
    print(" you are neither male nor tall ")


# if statements and comparisons

def max_num(num1, num2, num3):
    if num1 >= num2 and num1 >= num3:
        return num1
    elif num2 >= num1 and num2 >= num3:
        return num2
    else:
        return num3


print(max_num(300, 2, 1))


def max_num(num1, num2, num3):
    if num1 != num2 and num1 != num3:
        return num1
    elif num2 == num1 and num2 == num3:
        return num2
    else:
        return num3


print(max_num(300, 2, 1))
