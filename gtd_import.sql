USE GTD;

# This will create our empty table
SELECT * FROM gtd_no_nulls;

SELECT 
	gname, COUNT(gname) AS assassination_attempts, 
	COUNT(CASE
    # add both conditions, with AND/OR, followed by THEN for action on criteria satisfaction
    WHEN success = 1 THEN 1
    # create the ELSE statement
    ELSE 0
    # specify the END of the CASE argument
    END) AS successes
FROM
	gtd_no_nulls
WHERE
	attacktype1 = 1
GROUP BY
	gname
ORDER BY
	COUNT(gname) DESC;
					


# use a wizard to import data all at once
# data cleaning with SQL: cast data, str_to_date

						