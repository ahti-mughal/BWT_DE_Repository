class Employee:
    company = "GOOGLE"
    def getSalary(self,signature):
        print(f"Salary for this employee in {self.company} is {self.salary} \n{signature}")

    def __init__(self,name,salary,subunit):
        print("Employee is Created")
        self.name = name
        self.salary = salary
        self.subunit= subunit

     
    
    def getDetails(self):
        print(f"The name of Employee is {self.name}") 
        print(f"The salary of Employee is {self.salary}") 
        print(f"The subunit of Employee is {self.subunit}") 
        
        

# qasim = Employee() ---->throws an error because  missing 3 required positional arguments:
qasim = Employee("QASIM","One Crore","Youtube")
qasim.getDetails()
