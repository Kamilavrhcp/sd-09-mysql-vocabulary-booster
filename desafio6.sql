select concat(em.FIRST_NAME, ' ', em.LAST_NAME) as 'Nome completo',
jo.JOB_TITLE as 'Cargo',
jh.START_DATE as 'Data de início do cargo',
de.DEPARTMENT_NAME as 'Departamento'
from hr.job_history as jh inner join hr.jobs as jo on jo.JOB_ID = jh.JOB_ID
inner join hr.employees as em ON jh.EMPLOYEE_ID = em.EMPLOYEE_ID
inner join hr.departments as de on de.DEPARTMENT_ID = jh.DEPARTMENT_ID
order by concat(em.FIRST_NAME, ' ', em.LAST_NAME) desc, jo.JOB_TITLE asc;
