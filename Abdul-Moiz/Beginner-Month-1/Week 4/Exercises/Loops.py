# TASK
# The provided code stub reads and integer, n, from STDIN. For all non-negative integers i < n  , print i^2.

#SOLUTION 
n = int(input())
for number in range(0, n):
    print(number * number)