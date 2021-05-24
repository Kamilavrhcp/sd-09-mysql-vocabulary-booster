SELECT COUNTRY_NAME AS PAÍS,
IF(REGION_ID = 1, 'incluído', 'não incluído')
AS `Status Inclusão`
FROM hr.countries ORDER BY País;
