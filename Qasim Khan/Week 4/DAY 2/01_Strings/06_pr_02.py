# letter = '''Dear <|NAME|>
# You are selected!

# Date: <|DATE|>
# '''
#mistake because when we replace the we use a = a.replace......
# letter = '''Dear <|NAME|>
# You are selected!

# Date: <|DATE|>
# '''
# name = input ("enter your name:\n")
# date = input ("enter date:\n")
# letter.replace('<|NAME|>', name)
# letter.replace('<|DATE|>', date)

letter = '''Dear <|NAME|>,
Greetings from coding ABC house.I am happy to tell about your selection.
You are selected!
Have a great ahead!
Thanks and regards,

Date: <|DATE|>
'''
name = input ("enter your name:\n")
date = input ("enter date:\n")
letter = letter.replace('<|NAME|>', name)
letter = letter.replace('<|DATE|>', date)

print(letter)