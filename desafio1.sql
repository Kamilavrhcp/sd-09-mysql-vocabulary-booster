SELECT 
    c.COUNTRY_NAME AS 'País',
    IF(r.region_id = 1,
        'incluído',
        'não incluído') AS 'Status Inclusão'
FROM
    hr.countries AS c
        INNER JOIN
    hr.regions AS r ON r.REGION_ID = c.REGION_ID
order by c.COUNTRY_NAME ASC;
