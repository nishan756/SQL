USE college_db;

DELETE FROM students WHERE Roll = 100;

-- Deletion Using Limit (Subquery method in PostgreSQL)

DELETE FROM students WHERE `ID` IN (SELECT ID FROM students ORDER BY ID LIMIT 10);