SELECT countries.country_name AS 'País', IF(regions.region_id = 1, 'incluído', 'não incluído') AS 'Status Inclusão'
	FROM hr.countries, hr.regions 
    WHERE regions.region_id = countries.region_id
    ORDER BY countries.country_name ASC;
