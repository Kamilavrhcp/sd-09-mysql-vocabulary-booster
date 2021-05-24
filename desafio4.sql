select jo.JOB_TITLE as 'Cargo', round(avg(em.SALARY),2) as 'Média salarial',
case
when round(avg(em.SALARY),2) between 2000 and 5800 then 'Júnior'
when round(avg(em.SALARY),2) between 5801 and 7500 then 'Pleno'
when round(avg(em.SALARY),2) between 7501 and 10000 then 'Sênior'
when round(avg(em.SALARY),2) > 10500 then 'CEO'
end as 'Senioridade'
from hr.jobs as jo inner join hr.employees as em on jo.JOB_ID = em.JOB_ID
group by jo.JOB_TITLE
order by round(avg(em.SALARY),2), jo.JOB_TITLE;
