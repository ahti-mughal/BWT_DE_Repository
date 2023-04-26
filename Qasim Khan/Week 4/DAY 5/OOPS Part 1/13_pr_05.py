class Train:
    def __init__(self,name,fare,seats):
        self.name = name
        self.fare = fare
        self.seats = seats

    def getStatus(self):
        print(f"The name of the train is {self.name}")
        print(f"The number of seats available in {self.name} are {self.seats}")    

    def fareInfo(self):
        print(f"The price of fare is Rs {self.fare}")

    def bookTicket(self):
        if self.seats > 0 :
            print (f"Your seat has been booked!and your seat number is {self.seats}")
        else:
            print("sorry,The trian is full, there is no seat available in train")    
        self.seats = self.seats - 1   

greenline = Train("GreenLine",90,1)

greenline.getStatus()
greenline.bookTicket()
greenline.getStatus()
greenline.bookTicket()
greenline.fareInfo()           
