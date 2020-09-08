USE employees;

-- Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
# Modify your first query to order by first name. The first result should be Irena Reutenauer and the last
# result should be Vidya Simmen.
SELECT first_name
FROM employees
where first_name in ('Irena', 'Vidya', 'Maya')
ORDER BY first_name ;

# # Update the query to order by first name and then last name. The first result should now be Irena Acton and the
# # last should be Vidya Zweizig.
SELECT first_name, last_name
FROM employees
where first_name in ('Irena', 'Vidya', 'Maya')
ORDER BY first_name , last_name ;

# Change the order by clause so that you order by last name before first name. Your first result should still be
# Irena Acton but now the last result should be Maya Zyda.

SELECT emp_no , first_name, last_name
FROM employees
where first_name in ('Irena', 'Vidya', 'Maya')
ORDER BY last_name , first_name ;

# Update your queries for employees with 'E' in their last name to sort the results by their employee number.
# Your results should not change!

SELECT first_name , last_name
FROM employees
where last_name like '%E%'
ORDER By emp_no, last_name ;

# Now reverse the sort order for both queries.
SELECT  last_name , emp_no
FROM employees
where last_name like 'E%'
ORDER By  last_name desc , emp_no desc ;

# Change the query for employees hired in the 90s and born on Christmas such that the first result is the
# oldest employee who was hired last. It should be Khun Bernini.
select hire_date,birth_date
from employees
where hire_date like '199% ' and birth_date like '%-12-25'
ORDER BY birth_date , hire_date desc ;
