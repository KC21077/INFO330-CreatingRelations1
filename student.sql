-- Table students created with four additional roles inserted --
CREATE TABLE students ( id INTEGER PRIMARY KEY,
firstname VARCHAR(40),lastname VARCHAR(80),
age INTEGER );

INSERT INTO students(id, firstname, lastname,age)
VALUES ( 1, 'Fred', 'Flintstone', 35),
(2,'Wilma','Flintstone',29),
(3,'Barney','Rubble',33),
(4,'Betty','Rubble',29),
(5,'Pebbles','Flintstone',1),
(6,'Bam-Bam','Rubble',1),
(7,'Ruby','Borgia',18),
(8,'Izek','Omerta',23),
(9,'Medea','Solon',27),
(10,'Krystal','Jung',29);
