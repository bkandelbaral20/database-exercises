USE employees;

-- Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
SELECT * FROM employees where  first_name = ('Irena', 'Vidya', 'Maya');

-- Find all employees whose last name starts with 'E' — 7,330 rows.
select * from  employees where last_name like 'E%';

-- Find all employees hired in the 90s — 135,214 rows.
select * from  employees where hire_date BETWEEN '1990-01-01' and '1999-12-31';

-- Find all employees born on Christmas — 842 rows.

-- Find all employees with a 'q' in their last name — 1,873 rows.

-- Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.

-- Add a condition to the previous query to find everybody with those names who is also male — 441 rows.

-- Find all employees whose last name starts or ends with 'E' — 30,723 rows.

-- Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.

-- Find all employees hired in the 90s and born on Christmas — 362 rows.

-- Find all employees with a 'q' in their last name but not 'qu' — 547 rows.