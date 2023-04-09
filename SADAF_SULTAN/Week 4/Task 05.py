# MULTIPLE QUIZ
from student import student
from Question import Question

# MULTIPLE QUIZ
question_prompts =[
    "what is my fav color?\n (a) purple\n (b) black\n (c) green\n\n",
    "what is my fav person?\n (a) ami\n (b) abu\n (c) bhai\n\n",
    "what is my no in family ?\n (a) 4\n (b) 5\n (c) 3\n\n",
    "what is my fav fruit?\n (a) pomegranate\n (b) banana\n (c) apple\n\n",

]

questions = [
    Question(question_prompts[0], "b"),
    Question(question_prompts[0], "a"),
    Question(question_prompts[0], "c"),
    Question(question_prompts[0], "a")
]
def run_test(questions):
    score = 0
    for question in questions:
        answer = input(question.prompt)
        if answer == question.answer:
            score += 1
    print("You Got " +str(score) + "/"+str(len(questions))+"Correct")

run_test(questions)


# object Function
 # --- student class (separte class)
class student:

    def __init__(self, name, major, gpa, is_on_probation): # initially identify the data
        self.name = name
        self.major = major
        self.gpa = gpa

    def on_honor_roll(self):
        if self.gpa >= 3.5:
            return True
        else:
            return False

   # implimentation of student class
#from student import student

student1 = student("saadi", "account", 3.6)
student2 = student("saddi", "art", 3.1)

print(student1.on_honor_roll())


# INHERITANCE
 # chef class

class Chef:

    def make_chiken(self):
        print(" chef makes a CHIKEN ")

    def make_salad(self):
        print(" chef makes a SALAD ")

    def make_biryani(self):
        print(" chef makes a BIEYANI ")

    # chineseCheff

    from Chef import Chef

    class ChineseChef(Chef):

        def make_fried_rice(self):
            print(" chef can make FRIED RICE")


    # main Class
    from Chef import Chef
    from ChineseChef import ChineseChef

    myChef = Chef()
    myChef.make_chiken()

    myChineseChef = ChineseChef()
    myChineseChef.make_fried_rice()


# INTERPRET
 #  --> the python interpreter is a little environment that we can use to execute python
 

