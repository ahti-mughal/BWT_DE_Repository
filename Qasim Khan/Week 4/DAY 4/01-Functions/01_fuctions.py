def percent(marks):
    p = ((marks[0]+ marks[1]+ marks[2]+ marks[3])/400)*100
    return p
marks1 = [12, 88, 96, 34]
percentage1 = percent(marks1)    
marks2 = [62, 68, 36, 54]
percentage2 = percent(marks2) 
marks3 = [87, 88, 96, 74]
percentage3 = percent(marks3)
print (percentage1,percentage2) 
print(percentage3)