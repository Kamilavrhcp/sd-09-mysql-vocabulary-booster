SELECT  countries.COUNTRY_NAME AS 'País',
        IF(regions.REGION_NAME = 'Europe', 'incluído', 'não incluído') AS 'Status Inclusão'
FROM  hr.countries
JOIN  hr.regions ON countries.REGION_ID = regions.REGION_ID
ORDER BY countries.COUNTRY_NAME;
