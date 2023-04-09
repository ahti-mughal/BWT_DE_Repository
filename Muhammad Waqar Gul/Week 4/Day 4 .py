# A set is a collection which is unordered, unchangeable*, and unindexed.




cars = {"Porsche","Bugatti","McLaren"}

models = {"GTS","Chiron", "765LT"}

print(cars)




print(len(cars))

print(type(cars))




new_set = set((cars))

print(new_set)




#Adding items

cars.add('MCLaren 765LT')

print(cars)




#Update item

cars.update(models)

print(cars)




#remove item

cars.remove("GTS")

print(cars)




cars.discard("MCLaren 765LT")

print(cars)




cars.pop()

print(cars)




cars.clear()

print(cars)




#delete

del cars




#loop sets




set2 = {"apple", "banana", "cherry"}

for x in set2:

  print(x)




# Join sets using UNION

cars = {"Porsche","Bugatti","McLaren"}

models = {"GTS","Chiron", "765LT"}




setX = cars.union(models)

print(setX)

#OR

cars.update(models)

print(cars)

#Both union() and update() will exclude any duplicate items.




#Intersection

cars.intersection(models)

print(cars)

-----------------------------------------------------

# Tuples are ordered, unchangeable, and allow duplicate values. It is defined by ()

tuple1 = ('NewYork','London','Berlin')
print(tuple1)
print(type(tuple1))

#Check lenght
print(len(tuple1))

tuple2 = (1, 5, 7, 9, 3)
tuple3 = (True, False, False)

#Making tuple
tuple4 = tuple(("Python", "SQLServer", "ApacheSpark"))
print(tuple4)

#Slicing
print(tuple4[0:1])
print(tuple4[-1:])
print(tuple4[:1])

#Update Tuple
list1 = list(tuple4) #changing from tuple to list
print(list1) 

list1[2] = "mySQL"
tuple4 = tuple(list1)
print(tuple4)

#appending items to tuple
print(tuple4)
list2 = list(tuple4)
print(list2)
list2.append("ApacheSpark")
tuple4 = tuple(list2)
print(tuple4) #Updated

#removing items from tuple
print(tuple4)
list3 = list(tuple4)
list3.remove('mySQL')
tuple4 = tuple(list3)
print(tuple4) #Removed MYSQL

#delete tuple
del tuple4

#looping tuples
tup1 = ("Python", "SQLServer", "PySpark")
for x in tup1:
  print(x)

for i in range(len(tup1)):
  print(tup1[i])

#Joining tuples
tup1 = ("Python", "SQLServer", "PySpark")
tup2 = ("Database", "ML", "Big Data")

tup3 = tup1+tup2
print(tup3)

print(tup3 * 2) #doubling tuples