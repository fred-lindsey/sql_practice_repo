USE udemy_SQL_schema;
SELECT * FROM books;

# Find all titles that contain stories

SELECT 
	title
FROM 
	books
WHERE
	title LIKE "%stories%";
    
# Find the longest book in the database

SELECT 
	title, pages
FROM
	books
ORDER BY
	pages DESC
LIMIT
	1;
    
# Print a summary of the book, which is title - year

SELECT
	CONCAT(title, " - ", released_year) AS summary
FROM
	books
ORDER BY
	released_year DESC
LIMIT
	3;
    
# Find all books where author lname contains a space character

SELECT
	title, author_lname
FROM
	books
WHERE
	author_lname LIKE("% %");
    
# Find the three books with the lowest stock quantity

SELECT
	title, released_year, stock_quantity
FROM
	books
ORDER BY
	stock_quantity ASC
LIMIT
	3;
    
# Print the book titles, author_lname, sorted by author_lname
SELECT
	title, author_lname
FROM
	books
ORDER BY
	author_lname, title;
    
SELECT
	CONCAT(
		"MY FAVORITE AUTHOR IS ", 
		UPPER(author_fname), 
        " ", 
        UPPER(author_lname), 
        "!"
			) AS yell
FROM
	books
ORDER BY
	author_lname;
    

	
    

    
    


