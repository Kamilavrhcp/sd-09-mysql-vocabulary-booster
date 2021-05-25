SELECT COUNTRY_NAME AS 'País' ,
IF (REGION_ID = 1, 'incluído', 'não incluído' ) AS 'status Inclusão'
FROM hr.countries
order by País; 
