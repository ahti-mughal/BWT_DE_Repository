# Module & Pip

# import helperClass
# print(helperClass.add(2,2))

from Students import Student
# (self, name, age, major, cgpa, hasGrad):
s1 = Student("ABC", 20, "CS", 3.0, False)
print(s1.name + " of age " + str(s1.age) + " is doing " + s1.major + " with cgpa " + str(s1.cgpa))
print(s1.inDeansList())