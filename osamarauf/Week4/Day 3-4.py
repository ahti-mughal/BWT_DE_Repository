# Day 3 - 4

# Dictornaries

student_data = {
    'Name': 'Osama',
    'Age': 23,
    'Mobile': 332,
    'Location': 'G-9'
}

print(student_data.keys())
print(student_data.values())

name = student_data['Name']
print(name)

student_data['Age'] = 22
print(student_data)

mob = student_data.get('Mobile')
print(mob)

# While Loops

i = 0
nums = [4, 6, 7, 8]
sum = 0
while i < len(nums):
    sum += nums[i]
    i += 1

print(sum)

# For loop
sum2 = 0
for element in nums:
    sum2 += element

print(sum2)

sum3 = 0
for i in range(len(nums)):
    sum3 += nums[i]

print(sum3)

# Try / Except

try:
    numerator = int(input("Enter the numerator: "))
    denominator = int(input("Enter the denominator: "))
    result = numerator / denominator
    print("Result:", result)
except ZeroDivisionError:
    print("Error: Cannot divide by zero!")

# File Handling

with open("C:/Users/raufo/Documents/ImpWork/iTunesMusicAnalysis-Project/FinalProjectSteps.txt") as f:
    lines = f.readlines()
    print(lines)

# Classes


class Person:
    def __init__(self, name, age, mobile):
        self.name = name,
        self.age = age,
        self.mobile = mobile

    def greetingmessage(self):
        print(f"My name is {self.name} I'm {self.age}")


person1 = Person('Osama', 22, 332)
print(person1.age)


class Student(Person):
    def __init__(self, name, age, mobile, email):
        super().__init__(name, age, mobile)
        self.email = email

    def greetingmessage(self):
        super().greetingmessage()
        print(f'My emial is {self.email}')


student1 = Student('Osama', 22, 332, 'osamarauf99@gmail.com')
print(student1.greetingmessage())
