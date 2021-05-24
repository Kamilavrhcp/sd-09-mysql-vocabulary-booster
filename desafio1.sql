SELECT c.COUNTRY_NAME AS 'País', IF(c.REGION_ID = 1, 'incluído', 'não incluído') AS 'Status Inclusão'
FROM hr.countries AS c
INNER JOIN hr.regions AS r
ON r.REGION_ID = c.REGION_ID
ORDER BY c.COUNTRY_NAME ASC;
