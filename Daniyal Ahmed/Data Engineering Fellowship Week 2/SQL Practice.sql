CREATE  TABLE students (
     name varchar(100),
	 age int,
	 grade varchar(10),
);


INSERT INTO students (name, age, grade)
VALUES
  ('Alice', 18, 'A'),
  ('Bob', 17, 'B'),
  ('Charlie', 19, 'C');
  SELECT * FROM students;

  DELETE FROM students WHERE grade = 'C';

   SELECT * FROM students;

   DELETE FROM students WHERE age = '17' AND grade = 'B';

   SELECT * FROM students;

   UPDATE students
SET name = 'Daniyal', age = '20', grade = 'B'
WHERE name = 'Alice';
 SELECT * FROM students;