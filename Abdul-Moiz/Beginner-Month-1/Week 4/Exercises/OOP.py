#Write a function to define a class and its object and inherit it into a new child class


# Classes and Objects
class Rectangle:
    def __init__(self, width, height):
        self.width = width
        self.height = height
        
    def area(self):
        return self.width * self.height
    
    def perimeter(self):
        return 2 * (self.width + self.height)

my_rectangle = Rectangle(5, 7)
print(my_rectangle.area())
print(my_rectangle.perimeter())

#Inheritance 
class Square(Rectangle):
    def __init__(self, side):
        super().__init__(side, side)

my_square = Square(5)
print(my_square.area())
print(my_square.perimeter())
