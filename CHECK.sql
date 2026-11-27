/*কোন কলামের জন্য দেয়া ভ্যালুর উপর কন্ডিশন এপ্লাই করে দেখে। যদি স্যাটিসফাই করে তাহলে সেভ করে।

অন্যথায় এররর দেয় */

--syntax : column_name data_type CHECK(condition)

ALTER TABLE subjects ADD CONSTRAINT check_credit CHECK(credit > 0); 

CREATE TABLE marks(
    ID INT PRIMARY KEY AUTO_INCREMENT,

    Student_Id INT NOT NULL,

    Subject_Id INT NOT NULL,

    Mark INT(3) NOT NULL CHECK(Mark BETWEEN 0 AND 100),

    CONSTRAINT fk_student FOREIGN KEY(Student_Id) REFERENCES students(ID),

    CONSTRAINT fk_subject FOREIGN KEY(Subject_Id) REFERENCES subjects(ID)
);