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