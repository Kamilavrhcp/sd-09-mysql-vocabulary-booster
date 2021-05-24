SELECT COUNTRY_NAME AS País, 
	IF (
			(
			SELECT REGION_NAME
			FROM hr.regions
			WHERE REGION_ID = C.REGION_ID
			)  = 'Europe', 'incluído', 'não incluído'
		)
FROM hr.countries AS C
ORDER BY COUNTRY_NAME;
