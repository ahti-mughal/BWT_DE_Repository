# # Lists & Tuples
#
# days = ["Mon", "Tue", "Wed", "Thur", "Fri", "Sat", "Sun"]
# num = [1,2,3,4,5,6,7]
# print("First day of the week is " + days[0] + " which comes after " + days[-1] + " and has these days between them: " + str(days[1:5]))
#
# # Functions In List
# days.extend(num)
# print(days)
# days.append("Weekend")
# print(days)
# days.insert(1, "Dummy Day")
# print(days)
# days.remove("Dummy Day")
# print(days)
# print(days.index("Sat"))
# days = ["Mon", "Tue", "Wed", "Mon", "Fri", "Sat", "Mon"]
# print(days.count("Mon"))
# num.reverse()
# print(num)
# days2 = days.copy()
# print(days2)

# cord = (4,5)
# print(cord)
# cord[1] = 10 # not allowed

# Functions

# def add(num1, num2):
#     print(int(num1 + num2))
#
# def mult(num1, num2):
#     return num1*num2
#
# add(2,3)
# print(mult(2,3))

# If Else
def min_num(x,y,z):
    if x <= y and x <= z:
        return x
    elif y <= x and y <= z:
        return y
    else:
        return z

print(min_num(4,7,1))

