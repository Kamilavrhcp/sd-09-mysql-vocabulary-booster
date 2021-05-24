-- 18 - Faça um relatório que mostra o histórico de cargos das pessoas empregadas, mostrando as datas de início e de saída, assim como os anos que ela ficou nesse cargo
SELECT
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo`,
    DATE_FORMAT(h.START_DATE, '%d/%m/%Y') AS `Data de início`,
    DATE_FORMAT(h.END_DATE, '%d/%m/%Y') AS `Data de rescisão`,
    ROUND(DATEDIFF(h.END_DATE, h.START_DATE) / 365,
            2) AS `Anos trabalhados`
FROM
    hr.employees AS e
        INNER JOIN
    hr.job_history AS h ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos Trabalhados`;

-- Para o uso do DATE_FORMAT -> https://stackoverflow.com/questions/7043794/get-mysql-month-to-use-leading-zeros
-- Dividir por 365.25 para levar em conta os anos bissextos não acerta com o evaluator
-- TIMESTAMPDIFF(YEAR, h.START_DATE, h.END_DATE) AS `Anos Trabalhados` da a quantidade de anos completos
-- https://stackoverflow.com/questions/10506731/get-difference-in-years-between-two-dates-in-mysql-as-an-integer
