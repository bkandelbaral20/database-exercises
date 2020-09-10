
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
SELECT t.title AS `Title`, COUNT(*) AS `Count`
FROM titles as t
         JOIN employees as e
              ON t.emp_no = e.emp_no
         JOIN dept_emp as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date LIKE '9999%' AND d.dept_name = 'Customer Service' AND t.to_date LIKE '9999%'
GROUP BY t.title
ORDER BY t.title;


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
SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Employee Name', d.dept_name AS `Department Name`, CONCAT(e2.first_name, ' ', e2.last_name) AS `Department Manager Name`
FROM employees as e
         JOIN dept_emp AS de
              ON e.emp_no = de.emp_no
         JOIN departments AS d
              ON d.dept_no = de.dept_no
         JOIN dept_manager AS dm
              ON d.dept_no = dm.dept_no
         JOIN employees AS e2
              ON e2.emp_no = dm.emp_no
WHERE de.to_date LIKE '9999%' and dm.to_date LIKE '9999%'
ORDER BY e.last_name ASC;