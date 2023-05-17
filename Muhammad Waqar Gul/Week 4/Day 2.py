# While Loop: can execute a set of statements as long as a condition is true.

i = 1
while i < 6:
  print(i)
  i += 1

# Break Statement
i = 1
while i < 6:
  print(i)
  if i == 3:
    break
  i += 1

# Continue
i = 0
while i < 6:
  i += 1
  if i == 3:
    continue
  print(i)

# FOR loop: is used for iterating over a sequence (that is either a list, a tuple, a dictionary, a set, or a string).

cars = ['McLaren', 'Porsche', 'Lamborghini', 'Buggati']
for i in range(len(cars)):
  print(cars[i])

# Break Statement
for i in range(len(cars)):
  print(cars[i])
  if cars == "Lamborghini":
    break
print(cars[i])

# Continue statement
for i in range(len(cars)):
  print(cars[i])
  if cars == "Lamborghini":
    continue
print(cars[i])


-------------------------------------------

# A dictionary is a collection which is ordered*, changeable and do not allow duplicates.

import ipykernel


car = {
    "brand" : "McLaren",
    "model" : "765LT",
    "year" : 2020
}

print(car)
print(len(car))
print(type(car))
print(car["brand"])

# Accessing items
x = car['model']
print(x)

x = car.get("model")
print(x)

#Get Keys
x = car.keys()
print(x)

#Get values
x = car.values()
print(x)

#get items
x = car.items()
print(x)

#change values
car["year"] = 2021
print(car)

#update values
car.update({"model" : "720s"})
print(car)

#add items
car["color"] = "black"
print(car)

#remove items
car.pop("color")
print(car)

car.popitem() #remove last inserted item from dict
print(car) 

#loop dict
for i in car:
    print(car[i])

for i in car.keys():
    print(ipykernel)

for i, j in car.items():
    print(i, j)

# copy dictionary
thisdict = {
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}
mydict = thisdict.copy()
print(mydict)

#convert to dict
mydict = dict(thisdict)
print(mydict)

#nested dictionary

mclaren = {
    "model1" : {
    "model" : "720s",
    "year" : 2018
    },
    "model2" : {
    "model" : "765LT",
    "year" : 2020
    }
}

print(mclaren)