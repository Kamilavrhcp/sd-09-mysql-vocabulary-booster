delimiter $$
create function buscar_quantidade_de_empregos_por_funcionario(employeeEmail varchar(300))
returns int reads sql data
begin
declare total_empregos int;
select count(*) as total_empregos
from hr.job_history as jh
inner join hr.employees as em on em.EMPLOYEE_ID = jh.EMPLOYEE_ID
where EMAIL = employeeEmail into total_empregos;
return total_empregos;
end $$
