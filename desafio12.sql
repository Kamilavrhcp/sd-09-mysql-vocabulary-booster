select concat(em1.FIRST_NAME, ' ', em1.LAST_NAME) as 'Nome completo funcionário 1',
em1.SALARY as 'Salário funcionário 1',
em1.PHONE_NUMBER as 'Telefone funcionário 1',
concat(em2.FIRST_NAME, ' ', em2.LAST_NAME) as 'Nome completo funcionário 2',
em2.SALARY as 'Salário funcionário 2',
em2.PHONE_NUMBER as 'Telefone funcionário 2'
from hr.employees as em1, hr.employees as em2
where em1.JOB_ID = em2.JOB_ID and em1.EMPLOYEE_ID != em2.EMPLOYEE_ID
order by `Nome completo funcionário 1`, `Nome completo funcionário 2`;
