-- Create timeslots table --
CREATE TABLE timeslots(
id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
starttime TIME, endtime TIME);

INSERT INTO timeslots(starttime, endtime)
VALUES('12:00','13:00'),
('08:30','10:20'),
('14:30','15:20');

-- Modify room to have a id primary key --
DROP TABLE rooms;
CREATE TABLE rooms(
id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
number INTEGER,
buildingid INTEGER,
seating INTEGER,
FOREIGN KEY(buildingid) REFERENCES buildings(id));

INSERT INTO rooms(buildingid, number, seating)
VALUES( 344,(SELECT id FROM buildings WHERE name = 'Denny Hall'),20),
(210,(SELECT id FROM buildings WHERE name = 'Kane Hall'),60),
(520, (SELECT id FROM buildings WHERE name = 'Guthrie Hall'),5);

-- Create schedule table --
CREATE TABLE schedule(
  coursecode,
  roomid INTEGER,
  timeslotsid INTEGER,
  UNIQUE(roomid,timeslotsid),
  FOREIGN KEY(coursecode) REFERENCES courses(code)
  FOREIGN KEY(roomid) REFERENCES room(id),
  FOREIGN KEY(timeslotsid) REFERENCES timeselots(id)
);

INSERT INTO schedule(coursecode,roomid,timeslotsid)
VALUES('INFO330A',1,1),
('INFO448A',3,2);
