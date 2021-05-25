delimiter $$
create procedure exibir_historico_completo_por_funcionario(in empEmail varchar(300))
begin
select concat(em.FIRST_NAME,' ', em.LAST_NAME) as 'Nome Completo',
de.DEPARTMENT_NAME as 'Departamento',
jo.JOB_TITLE as 'Cargo'
from hr.job_history as jh
inner join hr.employees as em on em.EMPLOYEE_ID = jh.EMPLOYEE_ID
inner join hr.jobs as jo on jh.JOB_ID = jo.JOB_ID
inner join hr.departments as de on de.DEPARTMENT_ID = jh.DEPARTMENT_ID
where em.EMAIL = empEmail
order by `Departamento`, `Cargo`;
end $$
