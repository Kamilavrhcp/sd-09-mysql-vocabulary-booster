SELECT 
    COUNTRY_NAME AS 'País',
    IF(REGION_ID = 'Europa',
        'incluído',
        'não incluído')
FROM
    hr.countries
ORDER BY 'País';
