CREATE TABLE employees (id INT NOT NULL AUTO_INCREMENT, 
						last_name VARCHAR(50) NOT NULL,
                        first_name VARCHAR(50) NOT NULL,
                        middle_name VARCHAR(50),
                        age INT NOT NULL,
                        current_status VARCHAR(50) NOT NULL DEFAULT 'employed',
                        PRIMARY KEY (id));
DESC employees;

INSERT INTO employees (last_name, first_name, middle_name, age, current_status) 
VALUES ('Garcia', 'Jerry', 'Mike', 23, 'not employed');

SELECT * FROM employees;

INSERT INTO employees (first_name, last_name, age) VALUES ('Dora', 'Smith', 58);

SELECT * FROM employees;