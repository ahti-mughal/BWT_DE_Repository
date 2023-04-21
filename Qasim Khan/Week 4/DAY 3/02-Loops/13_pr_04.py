N = int(input("enter the number : "))
prime = True
for i in range (2,N):
    if (N%i==0): 
     prime = False
    break

if (prime):
    print("this number is prime")
else:
    print("this number is not prime")

