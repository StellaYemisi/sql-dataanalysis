CREATE TABLE Members (
Member_ID INT,
First_Name VARCHAR(100) NOT NULL,
Last_Name VARCHAR(100) NOT NULL,
Email TEXT,
Phone TEXT,
Joined_Date DATE,
Gender TEXT,
Status VARCHAR(20) Default 'Active')

INSERT INTO Members(Member_id,First_Name,Last_Name,Email,Phone,Joined_Date,Gender,Status)
Values('010','Alex','John','Alexjohn@gmail.com','(234) 8123456751','2024-02-04','Male','Active'),
('0102','Sarah','Henry','Saray@gmail.com','(234) 8102345687','2024-02-12','Female','Active'),
('0103','Simon','Duck','Simon@gmail.com','(234) 9010042545','2024-02-17','Male','Active'),
('0104','Peter','Amos','Pemos@gmail.com','(234) 8054673418','2024-02-23','Male','Active')

SELECT First_Name, Last_Name, Gender, Phone, Joined_Date From Members

Select Count (*) From Members

SELECT Last_Name From Members

SELECT Concat(First_Name,'',Last_Name)As Full_Name From Members

Select First_Name,Last_Name,Joined_Date From Members
Where Joined_Date >= '2024-02-12';
