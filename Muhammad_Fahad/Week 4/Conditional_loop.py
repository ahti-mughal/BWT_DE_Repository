# If 
a = 33
b = 200
if b > a:
  print("b is greater than a")

#Elif
a = 33
b = 33
if b > a:
  print("b is greater than a")
elif a == b:
  print("a and b are equal")

#Else
a = 200
b = 33
if b > a:
  print("b is greater than a")
elif a == b:
  print("a and b are equal")
else:
  print("a is greater than b")

# Short Hands
#If 
if a > b: print("a is greater than b")
#If-Else
print("A") if a > b else print("B")

#Using Operators
# AND
a = 200
b = 33
c = 500
if a > b and c > a:
  print("Both conditions are True")

# OR
a = 200
b = 33
c = 500
if a > b or a > c:
  print("At least one of the conditions is True")

# NOT
a = 33
b = 200
if not a > b:
  print("a is NOT greater than b")

# Nested If
x = 41

if x > 10:
  print("Above ten,")
  if x > 20:
    print("and also above 20!")
  else:
    print("but not above 20.")