class Employee:
    company = "GOOGLE"
    def getSalary(self):
        print(f"Salary for this employee in {self.company} is {self.salary}"
        )

qasim = Employee()
qasim.salary = 100000
qasim.getSalary() # Employee.getSalary(qasim)
farjad = Employee()
farjad.salary = 1000000
farjad.getSalary()
