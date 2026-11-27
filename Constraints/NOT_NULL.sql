/* 
কোন কলাম NULL হওয়া থেকে প্রেভেন্ট করে।
*/

CREATE TABLE teacher(

    ID INT PRIMARY KEY AUTO_INCREMENT,

    Name VARCHAR(60) NOT NULL,

    Email VARCHAR(100) NOT NULL UNIQUE,

    Phone CHAR(11) NOT NULL UNIQUE,

    Department_Id INT NOT NULL,

    CONSTRAINT dept_id_fk FOREIGN KEY(department_id) REFERENCES departments (ID) 
);