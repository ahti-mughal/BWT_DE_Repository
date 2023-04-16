# ask user to input a number containing more than one digit
# calculate sum of individual digits and print
# for example: 1234->1+2+3+4=10

num = input("Enter a number greater than 9: ")
total = 0
i = len(num)
count = 0
while i > 0:
    total += int(num[count])
    count = count+1
    i = i-1

print(total)
