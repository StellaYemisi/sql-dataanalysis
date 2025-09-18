CREATE TABLE books(
book_id INT,
title VARCHAR(150) NOT NULL,
author VARCHAR(100),
published_year INT,
genre VARCHAR(50),
available_copies INT DEFAULT 1
)
 
INSERT INTO books (book_id, title, author, published_year, genre, available_copies)
VALUES('9657','applied physics','charles berry','2015','textbook','2'),
 ('6754','only child','ball jerry','2019','novel','10'),
 ('7562','jungle','georgia','2020','novel','4'),
 ('0965','war 3','lukewarm','2024','biography','3'),
 ('7564','lukewarm','henry','2022','novel','6'),
 ('4333', 'geoscience','kenneth','2016','textbook','3'),
 ('3456','olumo rock','ajegunle','2018','biography','1'),
 ('1453','niece','kelvin','2024','novel','1')


 SELECT title,author FROM books

 SELECT DISTINCT genre FROM books

 SELECT published_year AS "year published" FROM books

 CREATE VIEW book_summary AS
 SELECT title, author, genre FROM books

 SELECT Published_year >'2015' FROM books

