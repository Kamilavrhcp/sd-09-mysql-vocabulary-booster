SELECT concat(employe.FIRST_NAME, " ", employe.LAST_NAME) AS "Nome completo",
job.JOB_TITLE as "Cargo",
hist.START_DATE as "Data de início do cargo",
depart.DEPARTMENT_NAME as "Departamento"
from hr.employees as employe
JOIN hr.jobs as job
ON employe.JOB_ID = job.JOB_ID
join hr.departments AS depart
ON employe.DEPARTMENT_ID = depart.DEPARTMENT_ID
join hr.job_history as hist
on employe.EMPLOYEE_ID = hist.EMPLOYEE_ID
order by `Nome completo` desc, `Cargo` asc;
