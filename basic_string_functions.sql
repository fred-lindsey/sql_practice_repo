# Exercises/Review
# Reverse and Uppercase
SELECT
	UPPER(
    REVERSE("Why does my cat look at me with such hatred?")
    ) AS up_rev;
# ?DERTAH HCUS HTIW EM TA KOOL TAC YM SEOD YHW

# Replace the spaces in the book titles with dashes
SELECT
	title, REPLACE(title," ", "->") AS symbol_spacing
FROM
	books;

# print author's last name, then print it backwards
SELECT
	author_lname AS forwards,
    REVERSE(author_lname) AS reverse
FROM
	books;
    
# print author's full name in all caps
SELECT
	CONCAT(
    UPPER(author_fname), 
    " ",
    UPPER(author_lname)
    ) AS full_caps
FROM
	books;
    
SELECT * FROM books;

SELECT
	CONCAT(
    title,
    " was released in ",
    released_year
    ) AS release_statement
FROM
	books;
    
SELECT
	title,
	CHAR_LENGTH(title) AS character_count
FROM
	books;
    
SELECT
	CONCAT
		(SUBSTRING(title, 1, 10), "...") AS short_title,
	CONCAT
		(author_lname, " , ", author_fname) AS author,
	CONCAT
		(stock_quantity, " in stock") AS quantity
FROM
	books
ORDER BY(quantity);
