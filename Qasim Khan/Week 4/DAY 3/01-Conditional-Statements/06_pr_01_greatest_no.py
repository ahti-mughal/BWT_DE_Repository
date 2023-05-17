N1 = int(input("enter no.1 :"))
N2 = int(input("enter no.2 :"))
N3 = int(input("enter no.3 :"))
N4 = int(input("enter no.4 :"))


if (N1>N4):
    f1 = N1
else:
    f1 = N4

if (N2>N3):
    f2 = N2
else:
    f2 = N3


if (f1>f2):
    print (str(f1)  +   'is greatest')
else:
    print (str(f2)  +   'is greatest')
    
