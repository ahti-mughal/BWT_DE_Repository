# Count the appearance of each character in a String
# provided by user
# for example: in String 'Saddar U Din Babar'
# S->1
# a->4
# d->2
# r->2
# U->1
# D->1
# i->1
# n->1
# B->1
# b->1

string = input("enter any string: ")
appeared = ""
i = 0
while i < len(string):
    char = string[i]
    if char in appeared:
        i += 1
    else:
        appeared += char
        print(f"{char} {string.count(char)}")
        i += 1
