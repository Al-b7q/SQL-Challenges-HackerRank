SELECT CASE WHEN g.grade > 7 THEN s.name ELSE NULL END AS NAME,
g.Grade, s.Marks
FROM Students as s
JOIN Grades as g
ON s.Marks Between g.MIN_Mark AND g.MAX_Mark
order by 2 DESC, 1, 3 ;