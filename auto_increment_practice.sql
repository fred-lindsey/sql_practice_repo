# default statements
CREATE TABLE cats2 (name VARCHAR(100) DEFAULT 'unnamed',
					age INT DEFAULT 99);
DESC cats;
INSERT INTO cats2 (age) VALUES(13);
SELECT * FROM cats2;

INSERT INTO cats2 () VALUES();
SELECT * FROM cats2;

CREATE TABLE cats3 (name VARCHAR(100) NOT NULL DEFAULT 'unnamed', 
					age INT NOT NULL DEFAULT 99);

INSERT INTO cats2 () VALUES();
SELECT * FROM cats2;

INSERT INTO cats3 () VALUES();
SELECT * FROM cats3;

INSERT INTO cats2 (name, age)
VALUES ('Montana', NULL);
SELECT * FROM cats2;

INSERT INTO cats3 (name, age)
VALUES ('Judy', NULL);
SELECT * FROM cats3;

# Primary Keys: stop duplicate data with a unique identifier
SELECT * FROM cats;

CREATE TABLE final_cats (cat_id INT NOT NULL, 
							name VARCHAR(50), 
                            age INT,
                            PRIMARY KEY (cat_id));
DESC final_cats;

INSERT INTO final_cats (cat_id, name, age) VALUES(1, 'Fred', 23);
SELECT * FROM final_cats;

INSERT INTO final_cats (cat_id, name, age) VALUES(2, 'Fred', 23);
SELECT * FROM final_cats;

CREATE TABLE final_cats2 (cat_id INT NOT NULL AUTO_INCREMENT, 
							name VARCHAR(50), 
                            age INT,
                            PRIMARY KEY (cat_id));
DESC final_cats2;

INSERT INTO final_cats2 (name, age) VALUES("Ricky", 4);
SElECT * FROM final_cats2;

INSERT INTO final_cats2 (name, age) VALUES("Jerry", 5), ("Ricky", 2), ("Ricky", 4);
SELECT * FROM final_cats2;


