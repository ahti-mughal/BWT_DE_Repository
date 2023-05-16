# Write a function that takes a list of tuples, where each tuple contains a student's name and their grades for three exams. The function should return a list of tuples where each tuple contains the student's name and their average grade. The average grade should be rounded to the nearest whole number.
grades = [('Alice', 85, 90, 92), 
          ('Bob', 72, 89, 94), 
          ('Charlie', 98, 87, 88)]
avg_grades = []          
for row in grades:
    name = row[0]
    avg_score = sum(row[1:]) // 3
    avg_grades.append((name, avg_score))

print(avg_grades)    
