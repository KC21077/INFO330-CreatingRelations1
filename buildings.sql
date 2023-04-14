-- Table name buildings with column id, name and shortname --
CREATE TABLE  buildings (
id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
name VARCHAR (80) NOT NULL,
shortname VARCHAR (10) UNIQUE);

-- Values inserted in buildings with id as integer primary key --
INSERT INTO buildings (name, shortname)
VALUES ('Arhitecture Hall','ARC'),
('Burke Memorial Museum','BMM'),
('Denny Hall', 'DEN'),
('Electrical Engineering Building', 'EEB'),
('Guthrie Hall', 'GTH'),
('Mechanical Engineering Building','MEB'),
('Oceanography Teaching Building', 'OTB'),
('Kane Hall', 'KNE');

-- Table rooms created --
CREATE TABLE rooms(
number INTEGER,
buildingid INTEGER,
seating INTEGER,
FOREIGN KEY(buildingid) REFERENCES buildings(id));

-- Values inserted in table rooms --
INSERT INTO rooms(buildingid, number, seating)
VALUES( 344,(SELECT id FROM buildings WHERE name = 'Denny Hall'),20),
(210,(SELECT id FROM buildings WHERE name = 'Kane Hall'),60),
(520, (SELECT id FROM buildings WHERE name = 'Guthrie Hall'),5);
