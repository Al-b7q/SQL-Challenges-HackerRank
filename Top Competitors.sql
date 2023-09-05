SELECT h.hacker_id, h.name
FROM Hackers AS h
JOIN Submissions AS S
ON h.hacker_id = s.hacker_id
JOIN Challenges as c
ON s.challenge_id = c.challenge_id
JOIN Difficulty as d
ON c.difficulty_level = d.difficulty_level
WHERE s.score = d.score
GROUP BY 1,2
HAVING COUNT(c.challenge_id) > 1
ORDER BY COUNT(c.challenge_id) DESC, 1 ;