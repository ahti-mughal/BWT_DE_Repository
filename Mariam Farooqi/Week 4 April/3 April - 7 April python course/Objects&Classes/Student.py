class Student:

    def __init__(self,name,gpa):
        self.name=name
        self.gpa=gpa

#func in class
    def student_info(self):
        if(self.gpa)>3.5:
            return True
        else:
            return False

