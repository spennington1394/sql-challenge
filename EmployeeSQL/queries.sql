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

--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
--tables have:
--employees has first_name, last_name, emp_no
--dept_emp has emp_no and dept_no
--departments has dept_no and dept_name

select employees.emp_no, employees.first_name, employees.last_name,departments.dept_name, 
dept_emp.dept_no
from dept_emp
left join departments 
on dept_emp.dept_no = departments.dept_no
left join employees 
on dept_emp.emp_no = employees.emp_no

--List first name, last name, and sex for employees whose 
--first name is "Hercules" and last names begin with "B."
select first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name like 'B%' 

--List all employees in the Sales department, including their 
--employee number, last name, first name, and department name.
--'Sales'
select employees.emp_no, employees.first_name, employees.last_name,departments.dept_name
from dept_emp
left join departments 
on dept_emp.dept_no = departments.dept_no
left join employees 
on dept_emp.emp_no = employees.emp_no
where dept_name = 'Sales'

--List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name
select employees.emp_no, employees.first_name, employees.last_name,departments.dept_name
from dept_emp
left join departments 
on dept_emp.dept_no = departments.dept_no
left join employees 
on dept_emp.emp_no = employees.emp_no
where dept_name = 'Development' or dept_name = 'Sales'