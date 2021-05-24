SELECT 
    h.COUNTRY_NAME AS 'País',
    IF(h.REGION_ID = 1,
        'incluído',
        'não incluído') AS 'Status Inclusão'
FROM
    hr.countries AS h
        INNER JOIN
    regions AS r ON h.REGION_ID = r.REGION_ID
ORDER BY h.COUNTRY_NAME;
