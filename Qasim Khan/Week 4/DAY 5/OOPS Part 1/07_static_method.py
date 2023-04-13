class Employee:
    company = "GOOGLE"
    def getSalary(self,signature):
        print(f"Salary for this employee in {self.company} is {self.salary} \n{signature}")

    @staticmethod
    def greet():
        print("Good Morning , Sir!")    
        

qasim = Employee()
qasim.salary = 100000
qasim.getSalary("Thanks") # Employee.getSalary(qasim)
farjad = Employee()
farjad.salary = 1000000
farjad.getSalary("Thanks!")

qasim.greet()
farjad.greet()