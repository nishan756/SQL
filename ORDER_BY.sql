SELECT * FROM subjects ORDER BY subject_code ASC;

--ORDER BY WITH WHERE
SELECT * FROM subjects WHERE ID BETWEEN 1 AND 5 ORDER BY subject_code DESC;

--কলাম এর নামের জায়গায় কলাম নাম্বার দিয়ে সর্ট করবে।
SELECT ID, subject_code, name FROM subjects ORDER BY 1 DESC;