# WHILE LOOP
i=1
while i<=10:
  print('sheroze')
  i+=1

secret_w="Play"
guess=""
coun=0
while(guess!=secret_w):
  coun+=1
  guess=input('enter guess name: ')
print('you win')
print('you take ' +str(coun) +'times')

numbers = [1, 2, 3, 4, 5]
for num in numbers:
    print(num * num)

print(2**3)

def raise_to_pow(baseno,powno):
  res=1
  for i in range(powno):
    res=res*baseno
    return res
print(raise_to_pow(2,6))

# 2D LIST
NUM=[[1,1,1],[2,2,2,],[3,3,3],[4,4,4]]
for i in NUM:
  print(i)

# TRY EXCEPT
# try:
#   nu1m=int(input('enter number: '))
#   print(nu1m)
# except ValueError:
#   print("invalid input")

# Reading files 
emp_file=open("employee.txt","r")
print(emp_file.read())
print(emp_file.readline())
# for store in array
for emp in emp_file.readline():
  print(emp)
print(emp_file.readlines())   
emp_file.close()

# WRITE A FILE
emp_file=open("employee.txt","a")
emp_file.write("sheroze -  BWT\n")
emp_file.write("rehman -  DE\n")
emp_file.close()

# for overwrite whole file 'w'
emp_file=open("employee.txt","w")




                