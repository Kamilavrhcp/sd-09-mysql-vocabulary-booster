delimiter $$
create procedure buscar_media_por_cargo(
in nome_cargo varchar(300)
)
begin
select round(avg(em.SALARY),2) as 'Média salarial'
from hr.employees as em
inner join hr.jobs as jo on jo.JOB_ID = em.JOB_ID
where JOB_TITLE = nome_cargo;
end $$
