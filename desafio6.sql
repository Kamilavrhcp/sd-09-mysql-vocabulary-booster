SELECT concat(employe.FIRST_NAME, " ", employe.LAST_NAME) AS NOME,
job.JOB_TITLE as Cargo,
employe.HIRE_DATE as "Data de início do cargo",
DEPART.DEPARTMENT_NAME asDepartamento
from hr.employees as employe
JOIN hr.jobs as job
ON employe.JOB_ID = job.JOB_ID
join hr.departments AS DEPART
ON employe.DEPARTMENT_ID = depart.DEPARTMENT_ID
order by nome desc, Cargo asc;
