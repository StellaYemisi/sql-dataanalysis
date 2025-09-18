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
