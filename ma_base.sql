ALTER TABLE diagnosticreponses 
MODIFY score VARCHAR(10);

UPDATE diagnosticreponses dr
JOIN diagnosticquestions dq 
    ON dq.id = dr.diagnosticquestion_id
JOIN diagnosticmodules dm
    ON dm.id = dq.diagnosticmodule_id
SET dr.score = CASE dr.score
    WHEN '1' THEN 'A'
    WHEN '2' THEN 'B'
    WHEN '3' THEN 'C'
    ELSE dr.score
END
WHERE dm.diagnosticmoduletype_id = 3;
