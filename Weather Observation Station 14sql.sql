SELECT ROUND(LAT_N,4)
FROM STATION
WHERE ROUND(LAT_N,4) < 137.2345
ORDER  BY 1 DESC
LIMIT 1;