select concat(em.FIRST_NAME, ' ', em.LAST_NAME) as 'Nome completo',
DATE_FORMAT(jh.START_DATE, '%d/%m/%Y') as 'Data de início',
DATE_FORMAT(jh.END_DATE, '%d/%m/%Y') as 'Data de rescisão',
round(datediff(jh.END_DATE, jh.START_DATE)/ 365,2) as 'Anos trabalhados'
from hr.employees as em inner join hr.job_history as jh on jh.EMPLOYEE_ID = em.EMPLOYEE_ID
order by `Nome completo`, `Anos trabalhados`;
