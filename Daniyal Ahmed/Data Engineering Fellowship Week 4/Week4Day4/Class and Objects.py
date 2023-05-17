class student:
    def __int__(self, name, major, gpa, is_on_probation):
        self.name = name
        self.major = major
        self.gpa = gpa
        self.is_on_probation =is_on_probation
    def on_honour_roll(self):
        if self.gpa >= 3.5:
            return True
        else:
            return  False
