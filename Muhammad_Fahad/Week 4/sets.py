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