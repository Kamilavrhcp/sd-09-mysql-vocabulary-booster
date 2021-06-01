SELECT CONCAT(e1.first_name, ' ', e1.last_name) AS 'Nome completo funcionário 1',
e1.SALARY AS 'Salário funcionário 1',
e1.phone_number AS 'Telefone funcionário 1',
CONCAT(e2.first_name, ' ', e2.last_name) AS 'Nome completo funcionário 2',
e2.SALARY AS 'Salário funcionário 2',
e2.phone_number AS 'Telefone funcionário 2'
FROM hr.employees AS e1
LEFT JOIN hr.employees AS e2
  ON e1.JOB_ID = e2.JOB_ID
WHERE e1.phone_number <> e2.phone_number
ORDER BY CONCAT(e1.first_name, ' ', e1.last_name) ASC, CONCAT(e2.first_name, ' ', e2.last_name) ASC;
