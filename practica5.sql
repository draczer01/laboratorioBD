select employee_id from EMPLOYEES 
GROUP BY first_name;


select COUNT(employee_id), avg(salary) , MAX(manager_id) from EMPLOYEES

GROUP BY first_name;

select COUNT(manager_id), avg(salary) , MAX(deparment_id) from EMPLOYEES

GROUP BY first_name;



select COUNT(employee_id), avg(salary) , MAX(manager_id) from EMPLOYEES

where job_id = 1

GROUP BY first_name;

select COUNT(manager_id), avg(salary) , MAX(deparment_id) from EMPLOYEES

where job_id = 5

GROUP BY first_name;



select COUNT(employee_id), avg(salary) , MAX(manager_id) from EMPLOYEES

having job_id = 1

order By  first_name


select COUNT(manager_id), avg(salary) , MAX(deparment_id) from EMPLOYEES

having job_id = 1

order By  first_name


select TOP 5 *
from EMPLOYEES




