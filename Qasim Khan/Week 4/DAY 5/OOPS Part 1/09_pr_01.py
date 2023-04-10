class Programmer():
    company = "MICROSOFT"
    def __init__(self,name,salary,age,product):
        print(f'Welcome To {self.company} ')
        self.name=name
        self.salary=salary
        self.age = age
        self.product = product

    def getDetails(self):
        print(f"The name of programmer is {self.name}")        
        print(f"The salary of {self.name} is {self.salary}")    
        print(f"The age of {self.name} is {self.age}")       
        print(f"The product of {self.name} is {self.product}")


qasim = Programmer("QASIM","1 CRORE","20","Youtube")


qasim.getDetails()

farjad = Programmer("FARJAD TOPI","1 LAC","20","Whatsapp")

farjad.getDetails()