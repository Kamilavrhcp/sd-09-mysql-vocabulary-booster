select COUNTRY_NAME as 'País', IF(REGION_ID = 1, 'incluído', 'não incluído') as 'Status Inclusão' from hr.countries order by COUNTRY_NAME;