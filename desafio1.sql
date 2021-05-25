SELECT 
    COUNTRY_NAME AS Pais,
    IF(REGION_ID = 1,
        'Incluido',
        'Não incluido') AS `STATUS INCLUSÃO`
FROM
    hr.countries
    ORDER BY Pais;
