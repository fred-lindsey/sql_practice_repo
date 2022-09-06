USE shirts_db;
# CREATE THE TABLE
CREATE TABLE shirts (shirt_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
						article VARCHAR(10),
                        color VARCHAR(10),
                        shirt_size VARCHAR(4) NOT NULL DEFAULT 'M',
                        last_worn INT NOT NULL);
                        
# INSERT multi-values with single insert statement into DB
INSERT INTO shirts (article, color, shirt_size, last_worn)
VALUES ('t-shirt', 'white', 'S', 10),
('t-shirt', 'green', 'S', 200),
('polo shirt', 'black', 'M', 10),
('tank top', 'blue', 'S', 50),
('t-shirt', 'pink', 'S', 0),
('polo shirt', 'red', 'M', 5),
('tank top', 'white', 'S', 200),
('tank top', 'blue', 'M', 15);

# INSERT single line into DB
INSERT INTO shirts (article, shirt_size, last_worn)
VALUES ('polo shirt', 'M', 50);

#SELECT only article and color from DB
SELECT 
	article, color
FROM
	shirts;

# SELECT all medium shirts in the DB, but without the shirt_id

CREATE TEMPORARY TABLE temp_shirts AS SELECT * FROM shirts;
ALTER TABLE temp_shirts DROP COLUMN shirt_id;
SELECT * FROM temp_shirts WHERE shirt_size ='M'; 

# OR 

SELECT 
	article, color, shirt_size, last_worn
FROM 
	shirts
WHERE 
	shirt_size = 'M';
    
# Update various shirt information:

UPDATE shirts SET shirt_size='L'
WHERE article = 'polo shirt';

UPDATE shirts SET last_worn = 0
WHERE last_worn = 15;

UPDATE shirts SET color='off white' AND shirt_size = 'XS'
WHERE color = 'white';

# DELETE all old shirts (worn 200+ days ago)

DELETE FROM shirts WHERE last_worn > 200;

DELETE FROM shirts;

DELETE FROM shirts WHERE article= "tank top";

DROP TABLE shirts;





