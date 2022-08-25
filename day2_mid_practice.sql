# Day2

-- Write an SQL query to calculate the bonus of each employee. The bonus of an employee is 100% of their salary 
-- if the ID of the employee is an odd number and the employee name does not start with the character 'M'. The bonus of an employee is 0 otherwise.

Return the result table ordered by employee_id.
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