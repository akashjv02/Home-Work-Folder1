--Collage library database--
INSERT INTO library_manage(id, title, author, price, genre)
VALUES ('1', 'The Great Gatsby', 'Dan Brown', '500', 'fiction'),
('2', 'The Lord of the Rings', 'J.R.R. Tolkien', '350', 'Fantasy, Adventure'),
('3', 'Harry Potter Series', 'J.K. Rowling', '600', 'Fantasy, Young Adult'),
('4', 'The Da Vinci Code', 'Dan Brown', '250', 'History'),
('5', 'Thought for the day', 'Freddy', '100', 'Science');

--Select all book that have price greater than 400--
SELECT * FROM library_manage WHERE price > 400;

--Select all books where the genre is either 'History','science', or 'fiction'--
SELECT * FROM library_manage WHERE genre IN ('History', 'Science', 'Fiction');

--Select the book where the title is excatly "The Great Gatsby"--
SELECT * FROM library_manage WHERE title = 'The Great Gatsby';

--Select all the books that are not written by 'Dan Brown'--
SELECT * FROM library_manage WHERE author != 'Dan Brown';
--Select all the books that have price between 200 and 500--
SELECT * FROM library_manage WHERE price BETWEEN 200 AND 500;       
--Select all the books where the genre contains the word 'Fantasy'--
SELECT * FROM library_manage WHERE genre LIKE '%Fantasy%';