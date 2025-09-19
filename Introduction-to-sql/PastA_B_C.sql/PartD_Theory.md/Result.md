CREATE TABLE books(
book_id INT,
title VARCHAR(150) NOT NULL,
author VARCHAR(100),
published_year INT,
genre VARCHAR(50),
available_copies INT DEFAULT 1
)

INSERT INTO books(book_id,title,author,published_year,genre,available_copies)
VALUES('1534','the dream','emile','2022','book','2'),
('5684','nightmare','janet','2019','novel','5'),
('2678','price&prejudice','jane','2023','book','3'),
('9087','future wife','alexander','2015','novel','7'),
('6788','olumo rock','ajadi','2018','biograpy','1'),
('1238','theartofwar','charles','2017','book','4'),
('5560','bonappetite','queen','2016','novel','6'),
('6754','jellroll','williams','2020','biograpy','1'),
('8755','twistoffaith','denson','2021','novel','5')

SELECT title, author FROM books

SELECT DISTINCT genre FROM books

SELECT published_year AS year_published FROM books

CREATE VIEW books_summary AS
SELECT title, author,genre
From books

SELECT*
FROM books
ORDER BY book_id DESC
LIMIT 5
                        Theory Answer
Database is a systems that store data in a tabular form for easy access 1b. Tables are the component of database. It consist of fields and records.

Primary key is important because it helps to identify relationship between tables.

VARCHAR has maximum strings character ranges from 0-255words and it’s very flexible. E.g; Names, Email. b. CHAR has strings character 0-10words, which limit data input and it can only be used for symbols or abbreviation c. Text has no limit data entry but take up all space, it’s not recommendable when there’s large data entry. E.g; description d. INT is a whole number / decimal numbers. E.g; price, Average

Similarities between postgrel Sql and Sql server Both stored structured data

Distinct helps to filter out duplicate values. We use it when there’s repetition of values in a data
