delimiter $$
create function exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes int, ano int)
returns int reads sql data
begin
declare quantContratacoes int;
select count(*)
from hr.employees
where month(HIRE_DATE) = mes and year(HIRE_DATE) = ano into quantContratacoes;
return quantContratacoes;
end $$
