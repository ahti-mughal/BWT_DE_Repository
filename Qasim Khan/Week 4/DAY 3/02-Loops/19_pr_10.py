n=3
for i in range(3):
    for j in range(3):
        if i==0 or i==n-1 or j==0 or j==n-1:
            print("*", end="")
        else:
            print(" ", end="")
    print()