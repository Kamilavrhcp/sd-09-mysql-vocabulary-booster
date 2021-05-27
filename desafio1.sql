SELECT 
    COUNTRY_NAME AS 'País',
    IF(REGION_ID = 'Europa',
        'incluído',
        'não incluído') AS 'Status Inclusão'
FROM
    hr.countries
ORDER BY COUNTRY_NAME;
