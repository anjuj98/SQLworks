
CREATE TABLE students(
student_id     INT PRIMARY KEY,
student_name   VARCHAR(50),
age            INT,
major          VARCHAR(50)
);

INSERT INTO students (student_id, student_name, age, major)
VALUES (1, 'John Smith', 20, 'Computer Science'),
       (2, 'Jane Doe', 21, 'Mathematics'),
       (3, 'Mike Johnson', 19, 'Physics'),
       (4, 'Emily Brown', 22, 'English'),
       (5, 'David Lee', 20, 'Biology');


CREATE TABLE courses (
  course_id INT PRIMARY KEY,
  course_name VARCHAR(50),
  instructor VARCHAR(50)
);

INSERT INTO courses (course_id, course_name, instructor)
VALUES (1, 'Database Management', 'Professor Smith'),
       (2, 'Calculus', 'Professor Johnson'),
       (3, 'Physics 101', 'Professor Adams'),
       (4, 'Literature', 'Professor Thompson'),
       (5, 'Biology Lab', 'Professor Davis');

UPDATE courses SET course_name='Biology' WHERE course_id=5;

	/*INNER JOIN */

SELECT students.student_name,courses.course_name
FROM students
INNER JOIN courses ON students.major=courses.course_name;

  /*LEFT JOIN */

SELECT students.student_name,courses.course_name
FROM students
LEFT JOIN courses ON students.major=courses.course_name;

  /*RIGHT JOIN */

SELECT students.student_name,courses.course_name
FROM students
RIGHT JOIN courses ON students.major=courses.course_name;

  /*FULL JOIN */

SELECT students.student_name,courses.course_name
FROM students
FULL JOIN courses ON students.major=courses.course_name;

  /*CROSS JOIN */

SELECT students.student_name,courses.course_name
FROM students
CROSS JOIN courses;

