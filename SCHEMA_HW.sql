DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

CREATE TABLE departments (
  dept_no text primary key,
  dept_name varchar(20) NOT NULL
);

CREATE TABLE dept_emp (
  emp_no integer primary key,
  dept_no text primary key,
  from_date date NOT NULL,
  to_date date NOT NULL
);

CREATE TABLE dept_manager (
  dept_no text primary key,
  emp_no integer NOT NULL,
  from_date date NOT NULL,
  to_date date NOT NULL
);

CREATE TABLE employees (
    emp_no integer primary key,
    birth_date date NOT NULL,
    first_name varchar(50) NOT NULL,
	last_name varchar(50) NOT NULL,
	gender varchar(50) NOT NULL,
	hire_date date NOT NULL
);
CREATE TABLE salaries (
  emp_no integer primary key,
  salary integer NOT NULL,
  from_date date NOT NULL,
  to_date date NOT NULL
);

CREATE TABLE titles (
  emp_no integer primary key,
  title varchar(30) NOT NULL,
  from_date date NOT NULL,
  to_date date NOT NULL
);
