--কলামের প্রতিটি ভ্যালু ইউনিক করতে বাধ্য করে। 

CREATE TABLE staffs(
    ID INT PRIMARY KEY,

    Name VARCHAR(100) NOT NULL,

    Phone CHAR(11) NOT NULL UNIQUE,

    Joined_At DATE DEFAULT CURRENT_DATE
);