SELECT DISTINCT 
    CONCAT(employes1.first_name, ' ', employes1.last_name) AS 'Nome completo funcionário 1',
    employes1.salary AS 'Salário funcionário 1',
    employes1.phone_number AS 'Telefone funcionário 1',
    CONCAT(employes2.first_name, ' ', employes2.last_name) AS 'Nome completo funcionário 2',
	employes2.salary AS 'Salário funcionário 2',
    employes2.phone_number AS 'Telefone funcionário 2'
FROM
    hr.employees AS employes1
INNER JOIN hr.employees AS employes2 ON employes1.job_id = employes2.job_id AND employes1.employee_id <> employes2.employee_id
ORDER BY `Nome completo funcionário 1` ASC, `Nome completo funcionário 2` ASC;
