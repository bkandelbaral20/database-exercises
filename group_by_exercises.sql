USE employees;

-- In your script, use DISTINCT to find the unique titles in the titles table. Your results should look like:
SELECT DISTINCT title FROM titles;

-- Senior Engineer
-- Staff
-- Engineer
-- Senior Staff
-- Assistant Engineer
-- Technique Leader
-- Manager

-- Find your query for employees whose last names start and end with 'E'. Update the query to find just the unique
# last names that start and end with 'E' using GROUP BY. The results should be:
SELECT last_name
FROM employees
where last_name like 'E%' AND last_name like '%E'
GROUP BY last_name   ;


-- Eldridgebirth_date
-- Erbe
-- Erde
-- Erie
-- Etalle

-- Update your previous query to now find unique combinations of first and last name where the last name starts and
# ends with 'E'. You should get 846 rows.

SELECT DISTINCT first_name , last_name
FROM employees
where last_name like 'E%'
  AND  last_name like '%E'
GROUP BY emp_no   ;



-- Find the unique last names with a 'q' but not 'qu'. Your results should be:

SELECT DISTINCT last_name
FROM employees
WHERE last_name like '%q%' and last_name not like '%qu%'
GROUP BY last_name;
--
-- Chleq
-- Lindqvist
-- Qiwen
-- Add a COUNT() to your results and use ORDER BY to make it easier to find employees whose unusual name is shared with others.
SELECT last_name, COUNT(*)
FROM employees
WHERE last_name like '%q%' and last_name not like '%qu%'
GROUP BY last_name
ORDER BY COUNT(*) DESC ;

-- Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the number of employees for
# each gender with those names. Your results should be:

select count(*), gender FROM employees
where first_name in ('Irena', 'Vidya', 'Maya')
GROUP BY gender;
-- 441 M
-- 268 F

# to make more readable output
select count(*) AS '# out of Occurances ', gender FROM employees
where first_name in ('Irena', 'Vidya', 'Maya')
GROUP BY gender;