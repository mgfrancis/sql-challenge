select * from employees where last_name =  'Aamodt' and date_part('year', hire_date) = '1986'
select * from dept_emp

--Data Analysis 1
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees e
join salaries s 
on e.emp_no = s.emp_no
order by emp_no 

--Data Analysis 2
select last_name, hire_date
from employees 
where date_part('year',hire_date) = '1986'
order by last_name

--Data Analysis 3
select d.dept_no, dt.dept_name, d.emp_no, e.last_name, e.first_name
from departments dt
join dept_manager d
on d.dept_no = dt.dept_no
join employees e
on e.emp_no = d.emp_no

--Data Analysis 4
select e.emp_no, e.last_name, e.first_name, dt.dept_name
from employees e
inner join dept_emp de
on e.emp_no = de.emp_no
left join departments dt
on dt.dept_no = de.dept_no

--Data Analysis 5
select (first_name || ' ' || last_name) as full_name, sex
from employees
where first_name = 'Hercules'
and last_name like 'B%'

--Data Analysis 6
select e.emp_no, (first_name || ' ' || last_name) as full_name, dt.dept_name
from employees e
inner join dept_emp de
on e.emp_no = de.emp_no
inner join departments dt
on dt.dept_no = de.dept_no
where dept_name = 'Sales'

--Data Analysis 7
select e.emp_no, (first_name || ' ' || last_name) as full_name, dt.dept_name
from employees e
inner join dept_emp de
on e.emp_no = de.emp_no
inner join departments dt
on dt.dept_no = de.dept_no
where dept_name in ('Sales', 'Development')

--Data Analysis 8
select count(e.last_name), e.last_name
from employees e
join employees e2
on e.last_name = e2.last_name
group by e.last_name 
order by count(e.last_name) desc



