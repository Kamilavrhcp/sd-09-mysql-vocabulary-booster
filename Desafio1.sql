USE hr;

SELECT 
    COUNTRY_NAME AS 'País',
    IF(region_id = 1,
        'incluído',
        'não incluído') AS 'Status Inclusão'
FROM
    countries
    ORDER BY COUNTRY_NAME;
