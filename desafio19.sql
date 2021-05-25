DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_employees INT;
select count(*)
from hr.employees
where MONTH(employees.HIRE_DATE) = 6 AND YEAR(employees.HIRE_DATE) = 1987
INTO total_employees;
RETURN total_employees;
END$$
DELIMITER ;