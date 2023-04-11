# this is single inheritance example

class Employee:
    company = "Google"
    def showDetails(self):
        print(" This is an employee")

class Programmer(Employee):
    language = "python"
    # company = "youtube"
    
    def getlanguage(self):
        print(f"This language is {self.language}")

    def showDetails(self):
        print(" This is a programmer")    

e = Employee()

p = Programmer()

e.showDetails()
p.showDetails()
p.getlanguage()