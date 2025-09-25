                               PART A

CREATE TABLE films (
    id INT4 PRIMARY KEY,
    title VARCHAR,
    release_year INT4,
    country VARCHAR,
    duration INT4,
    language VARCHAR,
    certification VARCHAR,
    gross INT8,
    budget INT8
);

-- Create the people table
CREATE TABLE people (
    id INT4 PRIMARY KEY,
    name VARCHAR,
    birthdate DATE,
    deathdate DATE
);

-- Create the reviews table
CREATE TABLE reviews (
    id INT4 PRIMARY KEY,
    film_id INT4,
    num_user INT4,
    num_critic INT4,
    imdb_score FLOAT4,
    num_votes INT4,
    facebook_likes INT4,
    FOREIGN KEY (film_id) REFERENCES films(id)
);

-- Create the roles table
CREATE TABLE roles (
    id INT4 PRIMARY KEY,
    film_id INT4,
    person_id INT4,
    role VARCHAR,
    FOREIGN KEY (film_id) REFERENCES films(id),
    FOREIGN KEY (person_id) REFERENCES people(id)
);

INSERT INTO films(id, title, release_year, country, duration, language, certification, gross, budget)
VALUES ('0120', 'Inception', '2010', 'USA', '148', 'English', 'PG-13', '829895144', '160000000'),
('0182', 'The Dark Knight', '2008', 'USA', '152', 'English', 'PG-13', '1004558444', '185000000'),
('0234', 'Parasite', '2019', 'South Korea', '132', 'Korean', 'R', '263000000', '11400000'),
('0134', 'Skyfall', '2012', 'UK', '143', 'English', 'PG-13', '1108561013', '200000000'),
('0817', 'Avatar', '2009', 'USA', '162', 'English', 'PG-13', '2923706026', '237000000'),
('0144', 'Titanic', '1997', 'USA', '195', 'English', 'PG-13', '2260000000', '200000000'),
('0139', 'Joker', '2019', 'USA', '122', 'English', 'R', '1074000000', '55000000'),
('0287', 'Interstellar', '2014', 'USA', '169', 'English', 'PG-13', '677500000', '165000000'),
('0230', 'Slumdog Millionaire', '2008', 'India', '120', 'Hindi', 'R', '378000000', '15000000'),
('0145', 'The Godfather', '1972', 'USA', '175', 'English', 'R', '246000000', '6000000'),
('0192', 'The Matrix', '1999', 'USA', '136', 'English', 'R', '467000000', '63000000'),
('0112', 'Frozen', '2013', 'USA', '102', 'English', 'PG', '1280000000', '150000000'),
('0123', 'The Lion King', '1994', 'USA', '88', 'English', 'G', '968000000', '45000000'),
('0108', 'Black Panther', '2018', 'USA', '134', 'English', 'PG-13', '1347000000', '200000000'),
('0101', 'La La Land', '2016', 'USA', '128', 'English', 'PG-13', '448000000', '30000000'),
('0100', 'Jaws', '1975', 'USA', '124', 'English', 'PG', '476000000', '9000000'),
('0940', 'Shrek', '2001', 'USA', '90', 'English', 'PG', '487000000', '60000000'),
('0458', 'The Irishman', '2019', 'USA', '209', 'English', 'R', '8000000', '159000000'),
('0870', 'Crouching Tiger, Hidden Dragon', '2000', 'China', '120', 'Mandarin', 'PG-13', '213000000', '17000000'),
('0900', 'Spirited Away', '2001', 'Japan', '125', 'Japanese', 'PG', '395000000', '19000000');

INSERT INTO people (id, name, birthdate, deathdate) VALUES
('0120', 'Leonardo DiCaprio', '1974-11-11', NULL),
('0182', 'Christian Bale', '1974-01-30', NULL),
('0234', 'Heath Ledger', '1979-04-04', '2008-01-22'),
('0134', 'Song Kang-ho', '1967-01-17', NULL),
('0817', 'Daniel Craig', '1968-03-02', NULL),
('0144', 'Sam Mendes', '1965-08-01', NULL),
('0139', 'James Cameron', '1954-08-16', NULL),
('0287', 'Joaquin Phoenix', '1974-10-28', NULL),
('0230', 'Matthew McConaughey', '1969-11-04', NULL),
('0145', 'Amitabh Bachchan', '1942-10-11', NULL),
('0192', 'Al Pacino', '1940-04-25', NULL),
('0112', 'Keanu Reeves', '1964-09-02', NULL),
('0123', 'Idina Menzel', '1971-05-30', NULL),
('0108', 'Donald Glover', '1983-09-25', NULL),
('0101', 'Chadwick Boseman', '1976-11-29', '2020-08-28'),
('0100', 'Emma Stone', '1988-11-06', NULL),
('0940', 'Steven Spielberg', '1946-12-18', NULL),
('0458', 'Mike Myers', '1963-05-25', NULL),
('0870', 'Robert De Niro', '1943-08-17', NULL),
('0900', 'Zhang Ziyi', '1979-02-09', NULL);

INSERT INTO reviews (id, film_id, num_user, num_critic, imdb_score, num_votes, facebook_likes)
VALUES ('0120','0120', '1200', '350', '8.8', '2100000', '150000'),
('0182','0182', '1500', '400', '9.0', '2400000', '200000'),
('0234', '0234','800', '300', '8.6', '700000', '50000'),
('0134', '0134', '1100', '320', '7.8', '1200000', '130000'),
('0817', '0817','2000', '500', '7.9', '3000000', '250000'),
('0144', '0144','1700', '450', '7.8', '2200000', '180000'),
('0139', '0139','1400', '380', '8.5', '1800000', '210000'),
('0287', '0287','1300', '360', '8.6', '1700000', '160000'),
('0230', '0230', '600', '280', '8.0', '900000', '80000'),
('0145', '0145','900', '300', '9.2', '1600000', '120000'),
('0192', '0192','950', '310', '8.7', '1500000', '110000'),
('0112', '0112','1000', '290', '7.5', '1400000', '100000'),
('0123', '0123','1100', '310', '8.5', '1300000', '90000'),
('0108', '0108','1600', '420', '7.3', '2000000', '150000'),
('0101', '0101','700', '250', '8.0', '800000', '85000'),
('0100', '0100','750', '260', '8.1', '950000', '90000'),
('0940', '0940','800', '270', '7.9', '1000000', '95000'),
('0458', '0458','500', '240', '7.8', '700000', '80000'),
('0870', '0870','600', '260', '7.9', '750000', '70000'),
('0900', '0900','850', '280','8.6', '1050000', '95000');

INSERT INTO roles (id, film_id, person_id, role) VALUES
('0120','0120' ,'0120' , 'Actor'),
('0182','0182' ,'0182' , 'Actor'),
('0234', '0234', '0234', 'Actor'),
('0134', '0134', '0134', 'Actor'),
('0817', '0817', '0817', 'Actor'),
('0144', '0144', '0144', 'Director'),
('0139', '0139', '0139', 'Director'),
('0287', '0287', '0287', 'Actor'),
('0230', '0230', '0230', 'Actor'),
('0145', '0145', '0145', 'Actor'),
('0192', '0192', '0192', 'Actor'),
('0112', '0112', '0112', 'Actor'),
('0123', '0123', '0123', 'Actor'),
('0108', '0108', '0108', 'Actor'),
('0101', '0101', '0101', 'Actor'),
('0100', '0100', '0100', 'Actor'),
('0940', '0940', '0940', 'Director'),
('0458', '0458', '0458', 'Actor'),
('0870', '0870', '0870', 'Actor'),
('0900', '0900', '0900', 'Actor');

                                     PART B

SELECT DISTINCT(COUNT(*)) AS "total number of films"
FROM films

SELECT title, 
       release_year,
FROM films

SELECT COUNT(*) AS "total number of films",
FROM films

SELECT COUNT(DISTINCT(country)) AS "distinct countries",
FROM films
                          
                             PART C
  SELECT*
	FROM films
	WHERE budget>'50000000'

	SELECT*
	FROM films
	WHERE duration BETWEEN 90 AND 120

	SELECT*
	FROM films
	WHERE title LIKE 'A%'

	

SELECT *
FROM films
WHERE release_year>'2010'

