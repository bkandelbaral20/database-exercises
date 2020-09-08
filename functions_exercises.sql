USE employees;

-- Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last
-- name together as a single column in your results.
select CONCAT (first_name, last_name)
From employees
where first_name like 'E%'
   AND first_name like '%E';


-- For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they
-- have been working at the company (Hint: You will also need to use now() or curdate())
select now(hire_date), now(birth_date)
from employees
where hire_date like '199% ' and birth_date like '%-12-25';
