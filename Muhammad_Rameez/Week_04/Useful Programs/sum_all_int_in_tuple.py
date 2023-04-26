mySet = {12, 32, "Hello", "Mad", True, 345, 57, False, 78, 89}
mylist = ()
mylist = tuple(mySet)
add = 0
print(mylist)

print(type(mylist[2]))
# Indexing is not allowed in set

# ======== Sum all the integers that are present in set converted tuple
for i in range(len(mylist)):
    if type(mylist[i]) == int:
        add = add + mylist[i]

print(add)
