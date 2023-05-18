class Student:
    def __init__(self, name, age, major, cgpa, hasGrad):
        self.name = name
        self.age = age
        self.major = major
        self.cgpa = cgpa
        self.hasGrad = hasGrad

    def inDeansList(self):
        if self.cgpa >= 3.5:
            return True
        else:
            return False