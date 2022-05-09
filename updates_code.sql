

-- Updating the name from the Information table whose id is 1

UPDATE 'Employee Information Table'
SET emp_name = 'Anand'
WHERE emp_no = 1;


-- Updating the Manager from the Department table whose emp_no is 4

UPDATE 'Department Manager Table'
SET emp_no = '12'
WHERE Department_id = 1093;

SELECT * FROM 'Department Manager Table';

-- Print all the unique Employee names
SELECT DISTINCT(emp_name) AS uni_names FROM 'Employee Information Table';


-- Finding all the products purchased by Shyam 
-- SELECT items.name from items INNER JOIN users_items 
-- ON items.id = users_items.item_id
--  JOIN users ON users_items.user_id = users.id
-- WHERE users.name = 'Shyam';


-- Adding column "Num_of_years" to Information table

ALTER TABLE 'Employee Information Table'
ADD COLUMN Num_of_years INT(1);

UPDATE 'Employee Information Table'
SET emp_no = 23
WHERE emp_no = 1;

UPDATE 'Employee Information Table'
SET emp_no = 1
WHERE emp_no = 2;


SELECT * FROM 'Employee Information Table' WHERE emp_no = 1;

-- Adding column "bonus" to "Employee Titles Table" table

ALTER TABLE 'Employee Titles Table'
ADD COLUMN bonus INT(1);

UPDATE 'Employee Titles Table'
SET bonus = 1
WHERE emp_title = 'Senior';

UPDATE 'Employee Titles Table'
SET bonus = 0
WHERE emp_title = 'Employee';


-- Adding a view for employees with Technology as dept

CREATE VIEW Technology_emp AS
SELECT * FROM 'Employee Department Table'
WHERE Department_id = 5342;

SELECT * FROM Technology_emp;

-- Adding a view for Senior Employees of the company
-- to be upgraded for manager position 

CREATE VIEW number_of_veterns AS
SELECT * FROM 'Employee Titles Table'
WHERE emp_no = 'Senior';

SELECT * FROM number_of_veterns;