# String Functions
# A. CONCAT
SELECT * FROM books;

# 1. CONCAT statement reads column 1, seperator, column 2

SELECT 
	CONCAT(author_fname, " ", author_lname) 
AS 
	full_name
FROM
	books;

# 2. CONCAT with SYMBOL: CONCAT_WS statement reads seperator, column 1, column 2 with the seperator applied between every column

SELECT 
	CONCAT_WS(" - ", title, author_fname, author_lname) 
AS 
	full_name
FROM
	books;
    
# B. SUBSTRINGS
SELECT SUBSTRING('Hello World', 1, 7); # Hello w: defined length substring
SELECT SUBSTRING('Hello World', 7); # World : selects from pos7 onward

SELECT 
	SUBSTRING(title, 1, 10) AS short_title
FROM 
	books;
    
# C. Multiple Function Substrings
# We embed SUBSTRING within CONCAT, to add an elipsis to the shortened title
SELECT
	CONCAT(
    SUBSTRING(title, 1, 10),
    "..."
    ) AS reduced_title
FROM 
	books;

# D. Replace

SELECT 
	REPLACE('hello world', 'hell', '$$$$');
    
SELECT 
	REPLACE(title, 'e', '3')
FROM
	books;
    
    
# now nest the functions, to apply to only first ten characters of the title

SELECT
	CONCAT(
	SUBSTRING(
	REPLACE(title, 'e', '3'), 1, 10
    ), '...') AS weird_title_string
FROM
	books;
    
# E. Reverse

SELECT
	REVERSE('Hello World'); # Output: dlroW olleH
    
# F. CHAR LENGTH

SELECT
	CHAR_LENGTH('Hello World');
    
SELECT 
	author_fname, CHAR_LENGTH(author_fname) AS name_length
FROM
	books;
    
SELECT 
	author_fname, 
    CHAR_LENGTH(author_fname) AS name_length, 
    CONCAT(author_fname, " is ", CHAR_LENGTH(author_fname), " characters long") AS len_statement
FROM
	books;
    
# G. Upper and Lower

SELECT
	*, UPPER(author_fname) AS up_first, LOWER(author_lname) AS low_last
FROM
	books
WHERE 
	CHAR_LENGTH(author_lname) > 4
ORDER BY
	pages DESC;



	
    
