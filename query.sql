SELECT 
	w1.name AS a, w1.company AS a_company, 
	w2.name AS b, w2.company AS b_company, 
	w3.name AS c, w3.company AS c_company
FROM workers w1
JOIN wants_to_work_with ww ON w1.id = ww.id1
JOIN workers w2 ON ww.id2 = w2.id
JOIN connected c1 ON w1.id = c1.id1
JOIN workers w3 ON c1.id2 = w3.id
JOIN connected c2 ON w2.id = c2.id1 AND w3.id = c2.id2
WHERE
	w2.id NOT IN (
		SELECT id2
		FROM connected
		WHERE id1 = w1.id)
ORDER BY w1.name DESC, w2.name, w3.name
