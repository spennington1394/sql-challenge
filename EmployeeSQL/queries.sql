--List the following details of each employee: employee number, 
--last name, first name, sex, and salary
select employees.emp_no, employees.first_name, employees.last_name, employees.sex, salaries.salary
from salaries
inner join employees on
employees.emp_no=salaries.emp_no

--List first name, last name, and hire date 
--for employees who were hired in 1986.
select first_name, last_name, hire_date
from employees
where hire_date between '1986-01-01' and '1986-12-31'

--List the manager of each department with the following information: 
--department number, department name, the manager's employee number,
--last name, first name
--departments dept_name and dept_no
--dept_manager has dept_no and emp_no
--employees has first_name, last_name, emp_no
select employees.first_name, employees.last_name,departments.dept_name, dept_manager.dept_no, dept_manager.emp_no
from dept_manager
left join departments 
on dept_manager.dept_no = departments.dept_no
left join employees 
on dept_manager.emp_no = employees.emp_no