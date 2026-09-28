select *
from employee_demographics;

select
concat(e.first_name, ' ', e.last_name) AS Full_name,
e.occupation,
d.department_name
from employee_salary e
join parks_departments d
ON e.dept_id = d.department_id;

SELECT 
    CONCAT(e.first_name, ' ', e.last_name) AS full_name,
    s.occupation,
    d.department_name
FROM employee_demographics e
JOIN employee_salary s
    ON e.employee_id = s.employee_id
JOIN parks_departments d
    ON s.dept_id = d.department_id;
    
    SELECT
    CONCAT(s.first_name, ' ', s.last_name) AS full_name,
    s.occupation,
    d.department_name
FROM employee_salary s
JOIN parks_departments d
    ON s.dept_id = d.department_id;
    
    select
    a.department_name,
        min(b.salary) AS min_salary,
        avg(b.salary) AS avg_salary,
        max(b.salary) AS max_salary
        
From employee_salary b
Join parks_departments a
ON a.department_id = b.dept_id
GROUP BY a.department_name;

Select 
concat(first_name, ' ', last_name) AS Special_Employees,
salary As Special_Salary
From Employee_salary
where Salary > (Select avg(salary) from employee_salary);

select
first_name, last_name, salary
from employee_salary
where salary > (select avg(salary) from employee_salary);
    
    
Select 
e.first_name,
e.last_name, 
coalesce(s.Occupation, 'Not Assigned') AS Occupation
from employee_demographics e
left Join employee_salary s
ON e.employee_id = s.employee_id;


SELECT
s.first_name,
s.last_name,
p.department_name,
CASE
	WHEN p.department_name = 'parks and recreation' THEN 'Eligible for 10% Bonus'
    WHEN p.department_name = 'Finance' THEN 'Eligible for 15% Bonus'
    ELSE 'No Bonus'
End AS Bonus_Category
From employee_salary s
Join parks_departments p
ON s.dept_id = p.department_id; 




  

