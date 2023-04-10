sub1 = int(input("Enter the marks of first subject : \n"))
sub2 = int(input("Enter the marks of second subject : \n"))
sub3 = int(input("Enter the marks of third subject : \n"))

if (sub1<33 or sub2<33 or sub3<33):
    print ("you are fail ")
elif (sub1+sub2+sub3)/3 < 40:
    print ("you are fail")
else:
    print ("congrats,you passed this exam")    
