## QUESTION 1
# Write your MySQL query statement below
-- A country is big if:

-- it has an area of at least three million (i.e., 3000000 km2), or
-- it has a population of at least twenty-five million (i.e., 25000000).
-- Write an SQL query to report the name, population, and area of the big countries.

-- Return the result table in any order.

SELECT name, population, area
FROM World
WHERE area >= 3000000 OR population >= 25000000;

## QUESTION 2

-- Return the result table in any order.
-- Good use of subqueries for this one

SELECT
    class
FROM
    (SELECT 
        class, COUNT(DISTINCT student) AS num
    FROM
        courses
    GROUP BY class) AS temp_table
WHERE 
    num > 4;
    
## QUESTION 3
    
# Write an SQL query to find the ids of products that are both low fat and recyclable.

# Return the result table in any order.
SELECT
    product_id
FROM 
    Products
WHERE
    (low_fats = 'Y' AND recyclable = 'Y');
    
## QUESTION 4

# Write an SQL query to report the names of the customer that are not referred by the customer with id = 2.
SELECT
    name
FROM
    Customer
WHERE
    referee_id <> 2 OR referee_id IS NULL;

## QUESTION 4
# Write an SQL query to report all customers who never order anything.
# We need to join the Orders table to the Customers table, then return only the Customers
# who never ordered anything, which will be a null value under CustomerId from an Outer join, 
# where Customers is the left table
SELECT
    C.name AS Customers
FROM
    Customers AS C
LEFT JOIN
    Orders as O
ON
    C.id = O.customerId
WHERE
    O.customerId IS NULL;