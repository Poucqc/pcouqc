SELECT HOUR(DATETIME) as HOUR, COUNT(*) as COUNT
FROM ANIMAL_OUTS
WHERE HOUR(DATETIME) BETWEEN 9 AND 20
GROUP BY HOUR(DATETIME)
ORDER BY 1