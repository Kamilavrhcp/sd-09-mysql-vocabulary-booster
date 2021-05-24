SELECT C.COUNTRY_NAME País, IF(R.REGION_NAME = 'Europe', 'incluído', 'não incluído')
FROM hr.countries C INNER JOIN hr.regions R ON C.REGION_ID = R.REGION_ID;
