-- Query to check successful load
SELECT * FROM unemployment;

SELECT * FROM gdp;

-- Join tables on county_id
SELECT gdp.year, gdp.level_current, gdp.change_current, 
unemployment.january, unemployment.february, unemployment.march, 
unemployment.april, unemployment.may, unemployment.june, 
unemployment.july, unemployment.august, unemployment.september, 
unemployment.october, unemployment.november, unemployment.december
FROM gdp
JOIN unemployment
ON gdp.year = unemployment.year;