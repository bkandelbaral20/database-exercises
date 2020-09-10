
use employees;



-- Using the example in the Associative Table Joins section as a guide, write a query that shows each department
-- along with the name of the current manager for that department.

SELECT  d.dept_name , CONCAT(e.first_name, ' ', e.last_name) AS current_manager
From employees as e
JOIN dept_manager as dm
    on e.emp_no = dm.emp_no
JOIN departments as d
    on dm.dept_no = d.dept_no
where dm.to_date = '9999-01-01'
ORDER BY d.dept_name;


-- Find the name of all departments currently managed by women.
SELECT  d.dept_name , CONCAT(e.first_name, ' ', e.last_name) AS current_manager, e.gender
From employees as e
         JOIN dept_manager as dm
              on e.emp_no = dm.emp_no
         JOIN departments as d
              on dm.dept_no = d.dept_no
where dm.to_date = '9999-01-01' and e.gender ='F'
ORDER BY d.dept_name;

-- Find the current titles of employees currently working in the Customer Service department.
SELECT  t.title AS `Title` , COUNT(*) As `Count`
From titles as t
         JOIN employees as e
              on t.emp_no = d.dept_no
         Join titles t on e.emp_no = t.emp_no
where d.dept_no = '9999-01-01' ;

-- Find the current salary of all current managers.
SELECT  d.dept_name as Department_Name , CONCAT(e.first_name, ' ', e.last_name) AS DEpartment_manager_name, s.salary as Salary
From employees as e
    Join salaries s
        on e.emp_no = s.emp_no
         JOIN dept_manager as dm
              on e.emp_no = dm.emp_no
         JOIN departments as d
              on dm.dept_no = d.dept_no
where dm.to_date = '9999-01-01' and  s.to_date = '9999-01-01'
ORDER BY d.dept_name;

-- Bonus Find the names of all current employees, their department name, and their current manager's name.
