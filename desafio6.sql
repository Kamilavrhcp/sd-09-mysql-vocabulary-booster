select concat(em.FIRST_NAME, ' ', em.LAST_NAME) as 'Nome Completo',
jo.JOB_TITLE as 'Cargo',
em.HIRE_DATE as 'Data de início do cargo',
de.DEPARTMENT_NAME as 'Departamento'
from hr.jobs as jo inner join hr.employees as em on jo.JOB_ID = em.JOB_ID
inner join hr.departments as de on de.DEPARTMENT_ID = em.DEPARTMENT_ID
order by 'Nome Completo' desc, 'Cargo' asc;
