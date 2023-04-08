#Say "Hello, World!" With Python
print("Hello, World!")

#Python If-Else

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

#Arithmetic Operators

a = int(input())
b = int(input())
print(a + b)
print(a - b)
print(a * b)

#Python Division
a = int(input())
    b = int(input())
    print(a // b)
    print(a / b)

#Loops
n = int(input())
for number in range(0, n):
    print(number * number)

#Write a Function
def is_leap(year):
    leap = False
    
    if year % 4 == 0:
        if year % 100 == 0:
            leap = False
            if year % 400 == 0:
                leap = True
        else:
            leap = True
                    
    
    return leap

year = int(input())
print(is_leap(year))

#Print Function and Inputs
n = int(input())
for i in range(1, n+1):
    print(i, end = '')

#List Comprehensions
x = int(input())
y = int(input())
z = int(input())
n = int(input())
newlist = [[a, b, c] for a in range (0, x+1) for b in range                    
           (0, y+1) for c in range (0, z+1) if (a+b+c) != n]
print(newlist)
    
#Whats your name?
def print_full_name(first, last):
    str = f"Hello {first} {last}! You just delved into python."
    print(str)
if __name__ == '__main__':
    first_name = input()
    last_name = input()
    print_full_name(first_name, last_name)

#Capitalize!
def solve(s):
    for i in s.split():
        s = s.replace(i,i.capitalize())
    return s
if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    s = input()

    result = solve(s)

    fptr.write(result + '\n')

    fptr.close()
    
# Write a function that takes a list of words as input and returns a dictionary where the keys are the words in the list, and the values are the lengths of the corresponding words.
word_len = {}
while True:
    words = input('Word: ')
    word_len.update({words : len(words)})
    if words == 'q':
        word_len.popitem()
        print(word_len)
        break    

# Write a function that takes a dictionary of items and prices as input, and returns a new dictionary where the keys are the items and the values are the prices with a 10% discount.
products = {
    'apples' : 50,
    'peaches' : 75,
    'bananas' : 35
}

discounted_products = {}
for item in products:
    discount = (90 / 100) * products[item]
    discounted_products[item] = discount

print(discounted_products)


# Write a function that takes a list of tuples, where each tuple contains a student's name and their grades for three exams. The function should return a list of tuples where each tuple contains the student's name and their average grade. The average grade should be rounded to the nearest whole number.
grades = [('Alice', 85, 90, 92), 
          ('Bob', 72, 89, 94), 
          ('Charlie', 98, 87, 88)]
avg_grades = []          
for row in grades:
    name = row[0]
    avg_score = sum(row[1:]) // 3
    avg_grades.append((name, avg_score))

print(avg_grades)    
