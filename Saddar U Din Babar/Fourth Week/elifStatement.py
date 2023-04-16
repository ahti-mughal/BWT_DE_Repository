# if elif else statement

# show ticket pricing
# 1 to 3 ->Free
# 4 to 10 -> 150
# 11 to 60 -> 250
# above 60 ->200

age = int(input("Enter your age: "))
if 1 <= age <= 3: print("Ticket price is: Free")
elif 4 <= age <= 10: print("Ticket price is: 150")
elif 11 <= age <= 60: print("Ticket price is: 250")
else: print("Ticket price is: 200")
