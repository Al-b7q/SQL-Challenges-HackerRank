SELECT salary*months, COUNT(salary*months)
FROM Employee
WHERE salary*months = (SELECT salary*months 
                        FROM Employee
                        ORDER BY 1 desc
                        LIMIT 1)
GROUP BY 1 ;
