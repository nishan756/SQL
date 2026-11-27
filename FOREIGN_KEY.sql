/*

১) কোন টেবিলের এক বা একাধিক কলাম যা অন্য টেবিলের প্রতিটি রো কে ইউনিকলি আইডেন্টিফাই করে 

তাকে ফরেইন কী বলে। 

২) দুটি টেবিলের মধ্যে রিলেশনশিপ তৈরি করতে ব্যবহার করা হয়।

৩) এমন কোন ভ্যালু অ্যাড করা যাবে না যেই ভ্যালু রেফারেন্স টেবিলে নেই। 
*/

--Column Level FK
CREATE TABLE subjects(

    ID INT PRIMARY KEY,

    Name VARCHAR(60) NOT NULL,

    Credit INT(1) NOT NULL,

    Department_Code INT REFERENCES departments(ID)
);

--Table Level FK

CREATE TABLE subjects(

    ID INT PRIMARY KEY,

    Name VARCHAR(60) NOT NULL,

    Credit INT(1) NOT NULL,

    Department_Id INT,

    FOREIGN KEY(Department_Id) REFERENCES departments(ID)
);

--Name FK

CREATE TABLE subjects(

    ID INT PRIMARY KEY,

    Name VARCHAR(60) NOT NULL,
    
    Credit INT(1) NOT NULL,

    Department_Id INT,

    CONSTRAINT fk_dept_id FOREIGN KEY (department_id) REFERENCES departments (ID)
);