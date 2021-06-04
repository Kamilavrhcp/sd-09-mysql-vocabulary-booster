SELECT
  UCASE(CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME)) 'Nome completo',
  H.START_DATE 'Data de início',
  E.SALARY 'Salário'
FROM 
  hr.employees E
    INNER JOIN
  hr.job_history H ON H.EMPLOYEE_ID = E.EMPLOYEE_ID
ORDER BY `Nome completo`, `Data de início`;
