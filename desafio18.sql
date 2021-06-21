SELECT
CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
DATE_FORMAT(j.START_DATE, '%d%m%y') AS 'Data de início',
DATE_FORMAT(j.END_DATE, '%d%m%y') AS 'Data de rescisão',
ROUND(DATEDIFF(j.END_DATE, j.START_DATE)/365, 2) AS 'Anos Trabalhados'
FROM hr.employees AS e
INNER JOIN job_history AS j
ON e.EMPLOYEE_ID = j.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos Trabalhados` ASC;
/*Usei o código que olega Ivan Rafael usou para formatar as datas*/
