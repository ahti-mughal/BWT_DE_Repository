
# 8 . lists
# store data in lists form
friends=["kevin" , "Jim" , "Ali" , "oscar" , "alyna" , "Ali"]
      #   0          1       2       3         4  index
      #   -5        -4       -3      -2       -1  index

print(friends[1])
print(friends[-3])
#want index 1 say end tk
print(friends[1:])
# want jim and ali so jim index is 1 and count till 2 last wla - hoga
print(friends[1:3])

#update lists
friends[1]="maria"
print(friends[1])

#/////////////////////////////////////////////////////////////////////
# 9 . lists func

# combine 2 lists
luckynum=[4,5,6,7,8]
luckynum.extend(friends)
print(luckynum)

#insert 1 element in list
friends.insert(1, "kelly")
print(friends)

#remove 1 element
friends.remove("alyna")
print(friends)
#remove whole lists element
friends.clear()
#find element index in list
print(friends.index("Ali"))
#count duplicate
print(friends.count("Ali"))
#sort the num
luckynum.sort()
#rev the num
luckynum.reverse()
print(luckynum)

#make another list same as freinds
friends2=friends.copy()
print(friends2)

#/////////////////////////////////////////////////////////////////////
# 10 . tuples

# diff bw tuples and list
# tuples do not change we cannot modify them             lists can be changes
# use parathenthis with tuple                            use squre brackets

mytuple = ("apple", "banana", "cherry")

#/////////////////////////////////////////////////////////////////////

#20 2d lists
number_grid=[
    [1,2,3],
    [4,5,6],
    [7,8,9]
]

# print 0 row and 0 column
print(number_grid[0][0])

for row in number_grid:
    print(row)

for row in number_grid:
    print(row)