# Day2

-- Write an SQL query to calculate the bonus of each employee. The bonus of an employee is 100% of their salary 
-- if the ID of the employee is an odd number and the employee name does not start with the character 'M'. The bonus of an employee is 0 otherwise.

#QUESTION 1
#Return the result table ordered by employee_id.
# Write your MySQL query statement below
SELECT
    employee_id,
    # using the case statement specifies the condition that follows
    CASE
    # add both conditions, with AND/OR, followed by THEN for action on criteria satisfaction
    WHEN employee_id%2!=0 AND name NOT LIKE 'M%' THEN salary
    # create the ELSE statement
    ELSE 0
    # specify the END of the CASE argument
    END
# use the corresponding aliasing
AS 
    bonus 
FROM
    Employees
ORDER BY
    employee_id;
    
#QUESTION 2

-- Write an SQL query to swap all 'f' and 'm' values (i.e., change all 'f' values to 'm' and vice versa) with a single update statement 
-- and no intermediate temporary tables.

-- Note that you must write a single update statement, do not write any select statement for this problem.

# Use update to reference the table to update, followed by the column to update, indicated with SET (Salary, then sex)
UPDATE
    Salary
# SET is the column to update
SET
# set the parameter with a CASE statement, "for Sex, if..."
    sex = CASE sex
    # swap male to female
        WHEN 'm' then 'f'
        #swap all others to male
        ELSE 'm'
        # terminate with END statement
    END;