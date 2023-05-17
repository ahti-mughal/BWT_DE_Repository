class RailwayForm:
    formType="Railway Form"
    def printData(self):
        print(f"Name is {self.name}")
        print(f"Train is {self.train}")
qasimsApplication = RailwayForm()
qasimsApplication.name = "QASIM"
qasimsApplication.train = "GreenLine"

qasimsApplication.printData()