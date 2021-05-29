SELECT
	country_name País,
	IF(region_id = 1,
    'incluído',
    'não incluído') AS 'Status inclusão'
FROM hr.countries
ORDER BY country_name;
