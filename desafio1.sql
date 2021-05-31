SELECT 
    COUNTRY_NAME AS 'País',
    IF(REGION_ID = 1,
        'incluído',
        'não incluído') AS 'Status Inclusão'
FROM
    countries AS c
WHERE
    c.REGION_ID = 1
ORDER BY COUNTRY_NAME;
