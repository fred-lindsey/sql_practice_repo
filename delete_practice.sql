# DELETE practice

SELECT * FROM cats;

DELETE FROM cats WHERE name='Egg';

SELECT * FROM cats;

INSERT INTO cats (name, breed, age) VALUES ('Egg2', 'kitty', 6);

SELECT * FROM cats;

DELETE FROM cats WHERE age=4;

DELETE FROM cats WHERE cat_id=age;

SELECT * FROM cats;

DELETE FROM cats;