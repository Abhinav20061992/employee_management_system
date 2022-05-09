--

CREATE TABLE `Employee Information Table` (
    'emp_no'      int             NOT NULL, 
    'birth_date'  DATE            NOT NULL,
    'emp_name'  VARCHAR(14)     NOT NULL,
    'gender'      VARCHAR(1)  NOT NULL,  
    'hire_date'   DATE            NOT NULL,
    PRIMARY KEY (emp_no)   

);

INSERT INTO `Employee Information Table` (`emp_no`, `birth_date`, `emp_name`,'gender','hire_date') VALUES
(1,  '20/5/1999','Alex','M','23/12/2020'),
(2,  '10/4/1999','Alex','F','14/9/2019'),
(3,  '29/5/2000','James','M','10/8/2020'),
(4,  '2/10/1999','Olivia','M','9/9/2020'),
(5,  '19/10/1999','Emma','M','23/3/2019'),
(6,  '20/9/1999','Noah','M','20/9/2020'),
(7,  '21/5/1999','David','M','22/5/2020'),
(8,  '2/2/1999','Jacob','M','12/9/2019'),
(9,  '17/6/1999','Emily','M','29/9/2020'),
(10, '18/11/1999','Sam','M','23/7/2020'),
(11, '6/5/1999','Saanvi','M','23/7/2019'),
(12, '5/6/1999','Ishaan','M','2/9/2020'),
(13, '7/2/1999','Adarsh','M','3/2/2020'),
(14, '7/5/1999','Pranay','M','3/1/2019'),
(15, '10/3/1999','Ashutosh','M','21/4/2020');


Select * from 'Employee Information Table';


CREATE TABLE `Department Information Table` (
    Department_id int(4) PRIMARY KEY NOT NULL,
    Department_name VARCHAR(40) NOT NULL

);

INSERT INTO `Department Information Table` (`Department_id`, `Department_name`) VALUES
(1093, 'Marketing'),
(2678, 'Quality Assurance'),
(3777, 'Consulting and CustomerCare'),
(5342, 'Technology'),
(1937, 'Accounting');


Select * from 'Department Information Table';


CREATE TABLE `Employee Department Table` (
    emp_no int(10) NOT NULL,
    Department_id   VARCHAR(4) NOT NULL,
    starting_date  DATE NOT NULL,
    Number_of_projects_completed  int(3) NOT NULL
);

INSERT INTO `Employee Department Table` (`emp_no`, `Department_id`, `starting_date`,'Number_of_projects_completed') VALUES
(1,  '1934','23/12/2020','7'),
(2,  '1093','14/9/2019','15'),
(3,  '2678','10/8/2020','3'),
(4,  '1093','9/9/2020','6'),
(5,  '5342','23/3/2019','7'),
(6,  '5342','20/9/2020','6'),
(7,  '1934','22/5/2020','2'),
(8,  '3777','12/9/2019','0'),
(9,  '1093','29/9/2020','2'),
(10, '1934','23/7/2020','5'),
(11, '1093','23/7/2019','8'),
(12, '3777','2/9/2020','4'),
(13, '1093','3/2/2020','2'),
(14, '3777','3/1/2019','8'),
(15, '1093','21/4/2020','11');


Select * from 'Employee Department Table';


CREATE TABLE `Employee Titles Table` (
    emp_no int(4) PRIMARY KEY NOT NULL,
    emp_title VARCHAR(40) NOT NULL
);

INSERT INTO `Employee Titles Table` (`emp_no`, `emp_title`) VALUES
(1, 'Senior'),
(2, 'Manager'),
(3, 'Senior'),
(4, 'Manager'),
(5, 'Senior'),
(6, 'Senior'),
(7, 'Employee'),
(8, 'Senior'),
(9, 'Manager'),
(10, 'Senior'),
(11, 'Manager'),
(12, 'Employee'),
(13, 'Senior'),
(14, 'Manager'),
(15, 'Senior');

Select * from 'Employee Titles Table';


CREATE TABLE `Department Manager Table` (
    Department_id int(4) PRIMARY KEY NOT NULL,
    emp_no VARCHAR(40) NOT NULL

);

INSERT INTO `Department Manager Table` (`Department_id`, `emp_no`) VALUES
(1093, '4'),
(2678, '14'),
(3777, '9'),
(5342, '2'),
(1937, '11');

Select * from 'Department Manager Table';



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