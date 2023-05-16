#TASK 
# Print an array of the elements that do not sum to .

#SOLUTION
x = int(input())
y = int(input())
z = int(input())
n = int(input())
newlist = [[a, b, c] for a in range (0, x+1) for b in range                    
           (0, y+1) for c in range (0, z+1) if (a+b+c) != n]
print(newlist)