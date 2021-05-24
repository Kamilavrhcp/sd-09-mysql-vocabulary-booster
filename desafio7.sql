select ucase(concat(em.FIRST_NAME, ' ', em.LAST_NAME)) as 'Nome completo',
em.HIRE_DATE as 'Data de início',
month(em.HIRE_DATE),
em.SALARY as 'Salário'
from hr.employees as em
where month(em.HIRE_DATE) between 1 and 3
order by concat(em.FIRST_NAME, ' ', em.LAST_NAME) asc, em.HIRE_DATE asc;
