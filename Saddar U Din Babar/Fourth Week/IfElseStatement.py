# Ask use's name and age
# if user's name starts with 'a' or 'A' and age is above ten then
# print 'You can watch coco movie'
# else print 'Sorry, you cannot watch coco'
name = input("Enter your name: ")
age = int(input("Enter your age: "))
if name[0] == ('a' or 'A') and age > 10:
    print("You can watch coco movie")
else:
    print("Sorry, you cannot watch coco")
