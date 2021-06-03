-- A primeira deve possuir o alias "País" e exibir o nome do país.
-- A segunda deve possuir o alias "Status Inclusão" e deve exibir "incluído" se o país em questão está incluso em "Europe", ou "não incluído", caso contrário.

SELECT
    COUNTRY_NAME AS 'País',
    IF(REGION_ID = '1', 'incluído', 'não incluído') AS 'Status Inclusão'
FROM hr.countries
ORDER BY COUNTRY_NAME ASC;
