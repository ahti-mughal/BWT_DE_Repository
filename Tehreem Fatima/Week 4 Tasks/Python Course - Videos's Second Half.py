
#Dictionary
daysOfWeek = {
   "S": "Sunday",
   "M": "Mnday",
   "T": "Tuesday",
   "W" : "Wednesday",
   "T":"Thursday",
   "F": "Friday",
   "S":"Saturday"}
print(daysOfWeek["S"])
print(daysOfWeek.get("S"))
print(daysOfWeek.get("B","Not a valid key"))
#While Loop
i=1
while i<=10:
    print(i)
    i+=1
print("done")

# Guess Game:
guess_count=0
guess_limit =3
out_of_Guesses= False
secret_word="pinky"
guess=""
while secret_word!= guess and not(out_of_Guesses):
    if guess_count < guess_limit:
       #guess=input("Enter Your Guess")
       guess_count+=1
    else:
        out_of_Guesses = True
        
if out_of_Guesses:
    print("You are out of guesses, You LOOSE")
else:
    print("You win")

#for Loop in Python
for letter in "Giraffe":
    print(letter)
friends =['amna','iza','azmat']
for letter in friends:
    print(letter)
for i in range(3,9):
    print(i)
for i in range(3,9):
    if i==0:
        print("first iteration")
    else:
        print("not 1st iteration")


def raise_to_power(base,power):
    result =1
    for i in range(power):
        result = result * base
    return result 

print(raise_to_power(3,3))

number_grid =[
    [1,2,3],
    [4,5,6],
    [5,7,8],
    [9,7]]
# printing the elements of list
for row in number_grid:
    for col in row :
        print(col)
    
#functon to change the vowels into g 
def translate(phrase):
    translation= ""
    for letter in phrase:
        if letter.lower() in "aeiou":
            if letter.isupper():
                translation =translation + "G"
            else:
                translation =translation + "g" 
        else :
            translation =translation + letter
    return translation
print(translate(input("enter phrase")))

# Try Except in Python
try:
    value = 10/0
    number= int(input("enter number"))
    print(number)
except ValueError:
    print("invalid input")
except ZeroDivisionError as err:
    print(err)
    
#Reading Files      
data_file = open("C:\\Users\\ATech\\Desktop\\data.txt" , "r")
print(data_file.read())
data_file.close()
# function to print the file data line by line
data_file = open("C:\\Users\\ATech\\Desktop\\data.txt" , "r")
for data in data_file.readlines():
     print(data)
data_file.close()
# function to check that file is readable or not
data_file = open("C:\\Users\\ATech\\Desktop\\data.txt" , "r")
print(data_file.readable())
data_file.close()

#writing into files
data_file = open("C:\\Users\\ATech\\Desktop\\data.txt" , "a")
data_file.write("\niza -human resource")
data_file.close()

#create new files
data_file = open("C:\\Users\\ATech\\Desktop\\data1.txt" , "w")
data_file.write("\niza -human resource")
data_file.close()

#create new html files
html_file = open("C:\\Users\\ATech\\Desktop\\data.html" , "w")
html_file.write("<p>This is html </p>")
data_file.close()

#Importing other Python Files
import minMax
print(fun_Minmax(3,1,True,3,4))

class Student:
    def __init__(self,name,major,gpa,is_on_probation):
        self.name=name
        self.major=major
        self.gpa=gpa
        self.is_on_probation=is_on_probation
    def on_honor_roll(self):
        if self.gpa>=3.5:
            return True
        else:
            return False

from Student import Student
student1=student("Ayesha","CS",3.9,False)
student1=student("Amna","CS",3.4,False)
print(student1.gpa)

#Multiple Choice Question
class Question:
    def __init__(self,prompt,answer):
        self.prompt =prompt
        self.answer =answer

question_prompts=["Who is the founder of pakistan?\n(a)Quaid-e-Azam\n(b)Sir Syed\n(c)Allama Iqbal\n\n",
                  "How many colors pakistani flag have?\n(a)1\n(b)8\n(c)2\n\n",
                  "Which is the national game of pakistan?\n(a)cricket\n(b)hockey\n(c)badminton\n\n"
                  ]
questions =[Question(question_prompts[0],"a"),
            Question(question_prompts[1],"c"),
            Question(question_prompts[2],"b")]
        
def run_test(questions):
    score=0
    for question in questions:
        answer= input(question.prompt)
        if answer ==question.answer:
            score+=1
    print("You got"+str(score)+"/" +str(len(questions))+"correct")
    # function call
run_test(questions)

# Classes in Python
class Chef:
    def make_chicken(self):
        print("The chef can make chicken")
    def make_salad(self):
        print("The chef can make salad")
    def make_special_dish(self):
        print("The chef can make bari bi q")
myChef= Chef()
myChef.make_salad()

# Chinese_Chef is Inheriting a Chef class  
class Chinese_Chef(Chef):
    #overriding the parent class function
    def make_special_dish(self):
        print("The chef can make orange chicken")
    def make_fried_Rice(self):
        print("The chinese chef can make fried rice")
myChineseChef=Chinese_Chef()
myChineseChef.make_chicken()
