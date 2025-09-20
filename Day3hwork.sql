--Inserting data into the books_table--
INSERT INTO books_table (title, author, genre, price, stock_status) 
VALUES ('The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', 300, 'In stock'),
('To Kill a Mockingbird', 'Harper Lee', 'Fiction', 450, 'In stock'),
('1984', 'George Orwell', 'Dystopian', 500, 'Out of stock'),
('Pride and Prejudice', 'Jane Austen', 'Romance', 350, 'In stock'),
('The Catcher in the Rye', 'J.D. Salinger', 'Fiction', 400, 'In stock'),
('The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 600, 'Out of stock');

--Show all the different genres available in the store(no duplicates)--
SELECT DISTINCT genre FROM books_table;

--list all books that are in stock and priced below 400.--
SELECT * FROM books_table WHERE stock_status = 'In stock' AND price < 400;

--list all books that  are either out of stock or have a price above 700.--
SELECT * FROM books_table WHERE stock_status = 'Out of stock' OR price > 700;

--show the title and price of every book along with a new column that adds 10% GST to the price.--
SELECT title,price, (price * 1.10) AS '10% price GST' FROM books_table;

--display the title,price and stock_status of all books, sorted by price from highest to lowest--
SELECT title, price, stock_status FROM books_table ORDER BY price DESC;


