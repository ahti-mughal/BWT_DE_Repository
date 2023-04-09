class Employee:
    company = "Bharat"
    salary = 5600
    bonusSalary = 600

    @property
    def totalSalary(self):
        return self.salary + self.bonusSalary

    @totalSalary.setter
    def totalSalary(self,val):
        self.bonusSalary = val - self.salary



e = Employee()
print(e.totalSalary)
e.totalSalary = 6000
print(e.totalSalary)
print(e.salary)
print(e.bonusSalary)
