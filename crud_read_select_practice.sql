# CRUD
# CREATE, READ, UPDATE, DELETE

DROP TABLE cats;

CREATE TABLE cats (cat_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
					name VARCHAR(100),
                    breed VARCHAR(100),
                    age INT);
DESC cats;

INSERT INTO cats (name, breed, age)
VALUES ('Ringo', 'Tabby', 4),
		('Cindy', 'Maine Coon', 10),
        ('Dumbledore', 'Maine Coon', 11),
        ('Egg', 'Persian', 4),
        ('Misty', 'Tabby', 13),
        ('George Michael', 'Ragdoll', 9),
		('Jackson', 'Sphynx', 7);

# Reading the database: SELECT Practice

SELECT * FROM cats;

SELECT cat_id FROM cats;

SELECT name, breed FROM cats;

SELECT 
	name, age
FROM 
	cats
WHERE 
	breed = 'Tabby';
    
SELECT
	cat_id, age
FROM
	cats
WHERE
	cat_id = age;
