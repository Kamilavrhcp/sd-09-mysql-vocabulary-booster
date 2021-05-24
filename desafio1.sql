SELECT
  ct.COUNTRY_NAME as 'País',
  IF(rg.REGION_ID = 1, 'incluído', 'não incluído') as 'Status Inclusão'
FROM
  hr.countries ct
  INNER JOIN hr.regions rg ON ct.REGION_ID = rg.REGION_ID
ORDER BY ct.COUNTRY_NAME ASC;
