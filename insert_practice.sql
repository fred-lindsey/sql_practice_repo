CREATE TABLE cats (name VARCHAR(10), age INT);

INSERT INTO cats (name, age)
VALUES ('Jetson', 7);

DESC cats;

SELECT * FROM cats;

INSERT INTO
	cats (age, name)
VALUES
	(12, 'Victoria');
    
SELECT * FROM cats;

INSERT INTO cats (name, age)
VALUES ('Ricky', 7),
		('Charlie', 9),
        ('Thomas', 12);

SELECT * FROM cats;

CREATE TABLE people (first_name VARCHAR(20), last_name VARCHAR(20), age INT);

INSERT INTO people (first_name, last_name, age)
VALUES ('Tina', 'Belcher', 13);

SELECT * FROM people;

INSERT INTO people (age, last_name, first_name)
VALUES (41, 'Belcher', 'Bob');

INSERT INTO people (first_name, last_name, age)
VALUES ('Linda', 'Belcher', 45),
		('Phillip', 'Frond', 38),
        ('Calvin', 'Fischoeder', 70);
        
SELECT 
	*
FROM
	people;