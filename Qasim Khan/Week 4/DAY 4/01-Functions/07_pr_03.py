def sum_recursive(n):
    if n==0:
        return 0 
    elif n==1:
        return 1
    else:
        return n + sum_recursive(n-1)      

ans = sum_recursive(10) 
print("THE SUM OF GIVEN NATURAL NO,S IS " + str(ans))

   