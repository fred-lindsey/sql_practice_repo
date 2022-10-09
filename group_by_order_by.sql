# Aggregate Functions
# Count
USE udemy_SQL_schema;

SELECT * FROM books;

SELECT
	COUNT(*) AS num_books
FROM 
	books;
    
SELECT 
	COUNT(DISTINCT author_fname) AS unique_authors
FROM
	books;
    
SELECT
	COUNT(DISTINCT author_lname, author_fname)
FROM
	books;
    
SELECT
	COUNT(title)
FROM 
	books
WHERE
	title LIKE "%the%";
    
# GROUP BY

SELECT
	author_lname AS author, COUNT(title) AS titles_by_author
FROM
	books
GROUP BY
	author_lname;
    
SELECT 
	released_year, COUNT(*) AS number_books_released
FROM
	books
GROUP BY
	released_year
ORDER BY
	released_year;
    


