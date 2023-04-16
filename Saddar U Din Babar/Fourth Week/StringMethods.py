# Take two comma separated inputs from user
# 1) User's name and
# 2) a character
# Then print the length of name and count the character that
# user inputted

name,ch=input("Enter name and a character seperated by comma: ").split(",")
print(f"Length of your name is : {len(name)}")
name=name.lower();
ch=ch.lower()
print(f"The character {ch} appears: {name.count(ch)} times")