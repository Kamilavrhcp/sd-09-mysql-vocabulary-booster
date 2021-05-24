SELECT COUNTRY_NAME AS 'País', IF(REGION_NAME = 'EUROPE', 'incluído', 'não incluído') AS 'Status Inclusão' FROM hr.countries AS C
INNER JOIN hr.regions AS R
ON R.REGION_ID = C.REGION_ID;