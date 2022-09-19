# String Functions Intro: SOURCE, CONCAT, SUBSTRING, etc

USE udemy_SQL_schema;

CREATE TABLE cats 
	(
		cat_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(100),
        age INT
	);
