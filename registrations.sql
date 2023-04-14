-- Create the table student_courses --
CREATE TABLE student_courses(
studentid INTEGER,
course INTEGER,
grade REAL NOT NULL,
FOREIGN KEY(studentid) REFERENCES students(id),
FOREIGN KEY(course) REFERENCES course(code));

-- Insert value that corresponds to table students and course on student id and course code --
INSERT INTO student_courses( studentid, course, grade)
VALUES (1, 'INFO330A', 90.80),
(1,'INFO448A', 77.09),
(1,'INFO314',89.70),
(3,'INFO330A',70.6),
(3,'INFO449A',80.5),
(2,'BAW0100', 100),
(2,'BAW100A', 66.9),
(4,'BAW0100',94.5);
