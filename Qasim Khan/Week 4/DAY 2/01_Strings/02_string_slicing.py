Greeting = "Good Morning, "
name = 'Qasim'
print (type(name))
# concatenating two strings
c  = Greeting + name
print(c)


a = 'Qasim'
print(a[4])
# a = [3] = "z" # --->does not work 
print (a[0:3])
# print (a[:4]) ---> this is same as a [0:4] 
print (a[0:5])
# print (a[1:]) ---> this is same as [1:5]

a = 'qasimisgood'
# print (a [0::1])
print (a[::2]) #this is same as (a[0::2])

# slicing with skip value
b = "shahzaib" # length= 8
# print(b[0:6:2])
print (b[::3]) # this is same as (b[0:8:3])
