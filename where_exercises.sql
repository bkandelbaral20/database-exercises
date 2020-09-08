USE employees;

-- Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
SELECT *
FROM employees
where first_name in ('Irena', 'Vidya', 'Maya');

-- Find all employees whose last name starts with 'E' — 7,330 rows.
select *
from employees
where last_name like 'E%';

-- Find all employees hired in the 90s — 135,214 rows.
select *
from employees
where hire_date BETWEEN '1990-01-01' and '1999-12-31';
# can do this too '199%'

-- Find all employees born on Christmas — 842 rows.
select *
from employees
where birth_date like '%-12-25';

-- Find all employees with a 'q' in their last name — 1,873 rows.
select *
from employees
where last_name like '%q%';

-- Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
SELECT *
FROM employees
where first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya';

-- Add a condition to the previous query to find everybody with those names who is also male — 441 rows.
SELECT *
FROM employees
where (first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya')
  And gender = 'M';

-- Find all employees whose last name starts or ends with 'E' — 30,723 rows.
select *
from employees
where last_name like 'E%'
   OR last_name like '%E';

-- Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
select *
from employees
where last_name like 'E%E';

-- Find all employees hired in the 90s and born on Christmas — 362 rows.
select * from employees where hire_date like '199% ' and birth_date like '%-12-25';

-- Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
select * from employees where last_name like '%q%' and last_name not like '%qu%';