SELECT c.country_name AS 'País', IF( c.region_id = 1, 'incluído', 'não incluído') AS 'Status Inclusão'
FROM hr.countries AS c, hr.regions r
WHERE c.region_id = r.region_id
ORDER BY c.country_name ASC;
