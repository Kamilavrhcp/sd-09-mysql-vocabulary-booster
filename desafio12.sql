SELECT
  CONCAT(EMP1.`FIRST_NAME`, ' ', EMP1.`LAST_NAME`) AS `Nome completo funcionário 1`,
  EMP1.`SALARY` AS `Salário funcionário 1`,
  EMP1.`PHONE_NUMBER` AS `Telefone funcionário 1`,
  CONCAT(EMP2.`FIRST_NAME`, ' ', EMP2.`LAST_NAME`) AS `Nome completo funcionário 2`,
  EMP2.`SALARY` AS `Salário funcionário 2`,
  EMP2.`PHONE_NUMBER` AS `Telefone funcionário 2`
FROM hr.employees AS EMP1
INNER JOIN hr.employees AS EMP2 ON EMP2.`JOB_ID` = EMP1.`JOB_ID`
AND CONCAT(EMP2.`FIRST_NAME`, ' ', EMP2.`LAST_NAME`) != CONCAT(EMP1.`FIRST_NAME`, ' ', EMP1.`LAST_NAME`)
ORDER BY `Nome completo funcionário 1` ASC, `Nome completo funcionário 2` ASC;
