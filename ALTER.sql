/* 

ALTER Command দিয়ে কোন টেবিলের স্ট্রাকচার চেঞ্জ করা হয়। যেমন ঃ কলাম অ্যাড, রিমুভ, 

কন্সট্রেইন্ট অ্যাড, রিমুভ করা ইত্যাদি

Syntax : 

ALTER TABLE table_name ADD / DROP....

*/

ALTER TABLE students ADD COLUMN father_name VARCHAR(60);

ALTER TABLE students ADD COLUMN mother_name VARCHAR(50);

ALTER TABLE students DROP COLUMN father_name;

ALTER TABLE students DROP COLUMN mother_name;

ALTER TABLE students ADD COLUMN semester 

CHAR(3);

ALTER TABLE students ADD CONSTRAINT 

semester_check  CHECK(semester IN ("1st", "2nd", "3rd", "4th", "6th", "7th", "8th"));

ALTER TABLE students DROP CONSTRAINT semester_check;

ALTER TABLE students RENAME COLUMN semester TO sem;