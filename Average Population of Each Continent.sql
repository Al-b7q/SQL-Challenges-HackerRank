SELECT C.Continent, FLOOR(AVG(CI.Population)) 
FROM COUNTRY AS C
JOIN CITY AS CI
ON C.CODE = CI.COUNTRYCODE
GROUP BY 1 ;