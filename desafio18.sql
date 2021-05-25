SELECT
  CONCAT(
    e.FIRST_NAME, ' ', e.LAST_NAME
  ) as 'Nome completo',
  CONCAT(
    LPAD(DAY(jh.START_DATE), 2, 0),'/',
    LPAD(MONTH(jh.START_DATE), 2, 0), '/',
    YEAR(jh.START_DATE)
  ) as 'Data de início',
  CONCAT(
    LPAD(DAY(jh.END_DATE), 2, 0),'/',
    LPAD(MONTH(jh.END_DATE), 2, 0), '/',
    YEAR(jh.END_DATE)
  ) as 'Data de rescisão',
  ROUND(DATEDIFF(jh.END_DATE, jh.START_DATE) / 365, 2) as 'Anos trabalhados'
FROM
  hr.job_history jh
  INNER JOIN hr.employees e ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
ORDER BY `Nome completo` ASC, `Anos trabalhados` ASC;