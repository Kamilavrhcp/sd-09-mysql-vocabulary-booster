SET @ID = (SELECT REGION_ID FROM hr.regions WHERE REGION_NAME = 'Europe');

SELECT COUNTRY_ID,
IF(REGION_ID = @ID, 'Incluído', 'Não Incluído') As Status_inclusão
FROM hr.countries;
