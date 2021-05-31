SELECT ucase(concat(employe.FIRST_NAME, " ", employe.LAST_NAME)) AS "Nome completo",
hist.START_DATE as "Data de início" ,
employe.SALARY as "Salário"
from hr.job_history as hist
JOIN hr.jobs as job
ON hist.JOB_ID = job.JOB_ID

join hr.employees as employe
on employe.EMPLOYEE_ID = hist.EMPLOYEE_ID
order by `Nome completo` asc, `Data de início` asc;
