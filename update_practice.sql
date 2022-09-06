# Update function, used to alter existing data



USE GTD;
SELECT * FROM cats;

UPDATE cats SET breed='Shorthair'
WHERE breed='Tabby';

SELECT * FROM cats;

UPDATE cats SET age=14
WHERE name = 'Misty';

SELECT * FROM cats WHERE name='Misty';

UPDATE cats SET name='Jack'
WHERE name='Jackson';

UPDATE cats SET breed='Shorthair'
WHERE name='Ringo';

SELECT * FROM cats;

UPDATE cats SET age=12
WHERE breed='Maine Coon';

SELECT * FROM cats;

