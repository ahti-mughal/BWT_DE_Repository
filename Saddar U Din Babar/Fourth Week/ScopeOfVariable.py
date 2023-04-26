x = 10

def fun1():
    x = 15
    print(x)

fun1()
print(x)

def fun2():
    global x
    x = 15

fun2()
print(x)