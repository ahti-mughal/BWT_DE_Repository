
#translation game
def translate(word):
    translation=""
    for letter in word:
         if letter in "aeiouAeiou":
            translation=translation+"g"
         else:
             translation=translation+letter
    return translation


print(translate(input("enter word to convert into giraffe lang")))

#try-catch block

try:
    value=10/0
    n=int(input("enter num"))
    print(n)
except ZeroDivisionError:
    print("invalid input")


#file read and write and append
file_read=open("file.html", "r")
print(file_read.read())
file_read.close()

file_write=open("file.html", "w")
print(file_write.write("<p>okay</p>"))
file_write.close()

file_write=open("file.html", "a")
print(file_write.write("<p>okay</p>"))
file_write.close()

