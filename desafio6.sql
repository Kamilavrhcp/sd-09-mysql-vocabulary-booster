SELECT concat(employe.FIRST_NAME, " ", employe.LAST_NAME) AS "Nome completo",
job.JOB_TITLE as Cargo,
employe.HIRE_DATE as "Data de início do cargo",
depart.DEPARTMENT_NAME as "Departamento"
from hr.employees as employe
JOIN hr.jobs as job
ON employe.JOB_ID = job.JOB_ID
join hr.departments AS depart
ON employe.DEPARTMENT_ID = depart.DEPARTMENT_ID
order by `Nome completo` desc, Cargo asc;
