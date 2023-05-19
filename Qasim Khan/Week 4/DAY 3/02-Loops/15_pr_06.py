#n! = 1 x  2 x 3 x .... n 

N = int (input("Enter the Number : "))

factorial = 1

for i in range (1,N+1):
    factorial = factorial * i 

print(factorial)    
