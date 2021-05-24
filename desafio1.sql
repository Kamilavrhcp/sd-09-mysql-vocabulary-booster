SELECT T1.COUNTRY_NAME AS 'País', IF (T2.REGION_NAME = 'Europe', 'incluído', 'não incluído') AS 'Status Inclusão'
FROM hr.countries AS T1
INNER JOIN hr.regions AS T2
ON T1.REGION_ID = T2.REGION_ID
ORDER BY T1.COUNTRY_NAME ASC;
