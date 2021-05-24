select ucase(concat(em.FIRST_NAME, ' ', em.LAST_NAME)) as 'Nome completo',
jh.START_DATE as 'Data de início',
em.SALARY as 'Salário'
from hr.employees as em inner join hr.job_history as jh on jh.EMPLOYEE_ID  = em.EMPLOYEE_ID
where month(jh.START_DATE) between 1 and 3
order by concat(em.FIRST_NAME, ' ', em.LAST_NAME) asc, jh.START_DATE asc;
