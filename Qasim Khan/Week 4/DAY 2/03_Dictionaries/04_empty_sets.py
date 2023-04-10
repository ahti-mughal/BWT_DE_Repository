#this syntex will create an empty dictionary and not an empty set
a = {}
print(type(a))

# an  empty set can be created using the below syntex

a = set()
print(type(a))
#adding values to empty set
a.add(3)
a.add(4)
a.add(6)

# a.add([1,3,5]) ---> list can not add in add because it can mutable
print (a)

