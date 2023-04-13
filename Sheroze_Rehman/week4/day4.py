import useful_tools

print(usefool_tools.max(2,3))

# class and objects
class  Student:
  def __init__(self,name,major,gpa,is_on_probation):
    self.name=name,
    self.gpa=gpa,
    self.major=major,
    self.is_on_probation=is_on_probation

std1=Student('Sheroze','BSCS',3.0,False)
std2=Student('Hamza','BsSE',3.2,True)

print(std1.gpa)
print(std2.name)


