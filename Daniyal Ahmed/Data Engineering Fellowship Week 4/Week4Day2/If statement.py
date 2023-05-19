is_male = True
is_tall = False

if is_male or is_tall:
    print("You are a male or tall")
elif is_male and is_tall:
    print("You are a tall male")
elif is_male and not(is_tall):
    print("You are a tall male")
elif not(is_male) and is_tall:
    print("You are a tall male")
else:
    print("You are not a male and short")