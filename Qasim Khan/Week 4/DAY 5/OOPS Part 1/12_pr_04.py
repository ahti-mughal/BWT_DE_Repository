class Calculator:
    def __init__(self,num):
        self.number = num

    @staticmethod
    def greet():
        print("******Hello! Welcome to the best calculator of the world******")
    def sqaure(self):
        print(f"The square of {self.number} is {self.number **2}")     

    def sqaureroot(self):
        print(f"The square root of {self.number} is {self.number **0.5}")     
          

    def cube(self):
        print(f"The cube of {self.number} is {self.number **3}")     
            

a = Calculator(4)

a.greet()
a.sqaure()
a.sqaureroot()
a.cube()            