# TASK
# Given an integer, , perform the following conditional actions:

# If  n is odd, print Weird
# If  n is even and in the inclusive range of 2 to 5, print Not Weird
# If  n is even and in the inclusive range of  6 to 20, print Weird
# If  n is even and greater than 20, print Not Weird

#SOLUTION                                                                 
n = int(input().strip())
if n % 2 != 0:
    print("Weird")
else:
    if n in range(2,6):
        print("Not Weird")
    elif n in range (6,21):
        print("Weird") 
    else:
        print("Not Weird") 