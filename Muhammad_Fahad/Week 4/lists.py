list1 = ["london", "berlin", "paris", "geneva", "rome"]
list2 = ["apple", "banana", "cherry"]
list3 = ["london", "berlin", "paris", "geneva"]


print(list1)

print(list1[2])  # Access Index wise

print(list1[-4]) # Negative Indexing

print(list1[0:1]) # Slicing

print(list1[-4:-1])

if "berlin" in list1:
    print('Available')
else:
    print('No')

list1[4] = "zurich"
print(list1)

list1[3:5] = ['madrid','barcelona']
print(list1)

list1[2:5] = ["zurich"]
print(list1)

list1.insert(3, "new york")  # Adding using Index
print(list1)

list1.append("ibiza") # Add at the end of the list
print(list1)

list1.extend(list2) # Extending list
print(list1)

list1.remove("cherry")
print(list1)

list1.pop(5)
print(list1)

del list2

list1.clear()  # Clear lust
print(list1)

for i in list3:
    print(i)

for i in range(len(list3)):
    print(list3[i])

thislist = [100, 50, 65, 82, 23]
thislist.sort()
print(thislist)

thislist.sort(reverse=True)
print(thislist)

def myfunc(n):
  return abs(n - 50)

thislist.sort(key = myfunc)
print(thislist)

thislist.reverse()
print(thislist)

thislist = ["apple", "banana", "cherry"]
mylist = thislist.copy()
print(mylist)

new_list = list(thislist)
print(new_list)