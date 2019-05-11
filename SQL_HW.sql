select * from departments
select * from dept_emp
select * from dept_manager
select * from employees
select * from salaries
select * from titles

-- List the following details of each employee: employee number, last name, first name, gender, and salary.
select e.emp_no, e.last_name, e.first_name, e.gender, s.salary from salaries as s
inner join employees as e on
e.emp_no=s.emp_no;

-- List employees who were hired in 1986.
select emp_no, last_name, first_name, hire_date from employees
where extract(year from hire_date) = 1986

-- List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, 
-- last name, first name, and start and end employment dates.

select d.dept_no, dm.emp_no, d.dept_name, e.last_name, e.first_name, dm.from_date, dm.to_date
from departments as d inner join dept_manager as dm
on d.dept_no = dm.dept_no
join employees as e on e.emp_no = dm.emp_no

-- List the department of each employee with the following information:
-- employee number, last name, first name, and department name.
select de.emp_no, e.last_name, e.first_name, d.dept_name from departments d
inner join dept_emp as de on d.dept_no = de.dept_no
inner join employees as e on e.emp_no = de.emp_no

-- List all employees whose first name is "Hercules" and last names begin with "B."
select first_name, last_name from employees
where first_name = 'Hercules' and last_name like 'B%'

-- List all employees in the Sales department, 
-- including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name from departments d
inner join dept_emp as de on d.dept_no = de.dept_no
inner join employees as e on e.emp_no = de.emp_no
where dept_name = 'Sales'

-- List all employees in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name from departments d
inner join dept_emp as de on d.dept_no = de.dept_no
inner join employees as e on e.emp_no = de.emp_no
where dept_name in ('Sales', 'Development')

-- In descending order, list the frequency count of employee last names, 
-- i.e., how many employees share each last name.
select last_name, count(last_name)from employees
group by last_name
order by count(last_name) desc

-- "Search your ID number." You look down at your badge to see that your employee ID number is 499942.
select * from employees
where emp_no = 499942 