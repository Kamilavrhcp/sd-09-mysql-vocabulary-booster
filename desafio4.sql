SELECT JOB_ID AS "Cargo", ROUND(avg(SALARY), 2) AS "Média salarial",
CASE 
WHEN ROUND(avg(SALARY), 2) < 5801 then 'Júnior'
WHEN ROUND(avg(SALARY), 2) < 7501 then 'Pleno'
WHEN ROUND(avg(SALARY), 2) < 10501 then 'Sênior'
else "CEO"
end as 'Senioridade'
FROM hr.employees 
GROUP BY JOB_ID
order by `Média salarial` asc, Cargo;
