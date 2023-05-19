# building a better calculator

num1 = float(input("Enter first number: "))
op = input(" enter operator:  ")
num2 = float(input("enter another number: "))

if op == "+":
    print(num1 + num2)
elif op == "-":
    print(num1 - num2)
elif op == "/":
    print(num1 / num2)
elif op == "*":
    print(num1 * num2)
else:
    print(" Invalid Operators")

#  using dictionaries
# ----> word would be the key -- uniquely identifier inside the dictionary
# ---> key value pair ( a key and then assign the key a specific value)
# ----> three words month name to full month name
monthConversions = {
    "Jan": "January",
    "Feb": "February",
    "Mar": "March",
    "Apr": "April",
    "May": "May",
    "Jun": "June",
    "Jul": "July",
    "Aug": "August",
    "Sep": "September",
    "Oct": "October",
    "Nov": "November",
    "Dec": "December",

}
print(monthConversions["Nov"])

print(monthConversions.get("Jan", " Not a Valid Key"))

# While LOOP
# -----repeatedly executed until condition is true
x = 1
while x <= 10:
    print(x)
    x += 1
print("Done with Loop")

# Building a Guessing Game

secret_word = "lion", " cat"
guess = " "
guess_count = 0
guess_limit = 3
out_of_guesses = False

while guess != secret_word and not out_of_guesses:
    if guess_count < guess_limit:
        guess = input("enter guess: ")
        guess_count += 1
    else:
        out_of_guesses = True
if out_of_guesses:
    print("out of guesses, You LOSE!")
else:
    print(" you win")

# FOR LOOP
# ----> split every word

for letter in " giraffe academy ":
    print(letter)

friends = [" sadaf", "aamir", "qamar"]
len(friends)
for friend in friends:
    print(friend)

for index in range(10):
    print(index)

for index in range(3, 10):
    print(index)

for index in range(len(friends)):
    print(friends[index])

for index in range(50):
    if index != 0:
        print("first iteration")
    else:
        print("not first")

# Exponent Function
# ----> its take a certain number and raise it to a specific power
# --->range is collection of numbers
print(2 ** 3)


def raise_to_power(base_num):
    return base_num * base_num * base_num


def raise_to_pow(base_num, pow_num):
    result = 1
    for index in range(pow_num):
        result = result * base_num
    return result


print(raise_to_pow(3, 2))

# 2D list and Nested Loop
number_grid_list = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
    [0]

    # grid like a structure is created

]
for row in number_grid_list:
    print(row)

print(number_grid_list[2][2])

for row in number_grid_list:
    for col in row:
        print(col)


# Build translator

def translate(phrase):
    translation = " "
    for letter in phrase:
        if letter.lower() in "aeiou ":
            if letter.isupper():
                translation = translation + "G"
            else:
                translation = translation + "g"
        else:
            translation = translation + letter
    return translation


print(translate(input(" enter a phrase:  ")))

# comments
# --- it is  basically a line inside our python file that's just not going to ger rendered by python,
# ---> its just  for the help of programmer
'''  triple quotations marks are also used to
 comment something for multiple lines'''
print(" comments are Fun")
