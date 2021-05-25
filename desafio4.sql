SELECT jobs.JOB_TITLE AS "Cargo", ROUND(avg(employees.SALARY), 2) AS "Média salarial",
CASE 
WHEN ROUND(avg(employees.SALARY), 2) < 5801 then 'Júnior'
WHEN ROUND(avg(employees.SALARY), 2) < 7501 then 'Pleno'
WHEN ROUND(avg(employees.SALARY), 2) < 10501 then 'Sênior'
else "CEO"
end as 'Senioridade'
FROM  (hr.jobs, hr.employees) 
GROUP BY JOB_TITLE
order by 2, 1 asc;
