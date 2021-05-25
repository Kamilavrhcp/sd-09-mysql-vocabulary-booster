SELECT JOB_ID AS "Cargo", round(avg(SALARY), 2) AS "Média salarial",
CASE 
WHEN "Média salarial" < 5801 then "Júnior"
WHEN "Média salarial" < 7501 then "Pleno"
WHEN "Média salarial" < 10501 then "Sênior"
else "CEO"
end as 'Senioridade'
 FROM hr.employees 
 GROUP BY JOB_ID
 order by `Média salarial` asc, Cargo;
