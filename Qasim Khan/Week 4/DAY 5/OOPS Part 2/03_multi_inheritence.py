class Employee:
    company = "visa"
    ecode = 120

class Freelancer:
    company = "Fiverr"
    level = 0

    def upgradeLevel(self):
        self.level = self.level + 1 


class Programmer (Freelancer,Employee):
    name = "QASiM"


p = Programmer()

p.upgradeLevel()
print (p.level)
print (p.name)
print (p.company)


