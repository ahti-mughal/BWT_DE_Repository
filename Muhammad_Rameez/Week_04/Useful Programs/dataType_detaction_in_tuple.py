fav = (
    "Augest",
    "Leo",
    "May",
    10,
    8,
    "Allah",
    True,
    False,
    "freedom",
    "finance",
    "books",
)
print(type(fav))
print(fav)
print(type(fav[3]) == int)

# ===== Data Type Detection in a list ====== (ref: Loops discuss below)
for i in range(len(fav)):
    if type(fav[i]) == int:
        print(f"The number {fav[i]} is exist in the tuple")
    elif type(fav[i]) == str:
        print(f'The String "{fav[i]}" is exist in the tuple')
    elif type(fav[i]) == bool:
        print(f'This Bool "{fav[i]}" is exist in the tuple')
    else:
        print("Not Specified the datatype")
