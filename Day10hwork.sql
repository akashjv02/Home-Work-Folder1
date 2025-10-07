--create table for authors--
CREATE TABLE authors(
    Author_ID INT PRIMARY KEY,
    Author_name VARCHAR(50) NOT NULL,
    Email_address VARCHAR(50) NOT NULL,
    UNIQUE (Email_address)
); 

 --Insert data into authors table--
    INSERT INTO authors(Author_ID,Author_name,Email_address)
VALUES (101, "Chetan Bhagat","chethanbhagath@gmail.com"),
        (102, "Rony Colman","rony@gmail.com"),
        (103,"Subhash Boss","subhash@gmail.com"),
        (104,"John Max","johnmax@gmail.com");

--create table for books--
CREATE TABLE books(
    Book_ID INT PRIMARY KEY,
    Book_title VARCHAR (50) NOT NULL,
    Author_ID INT NOT NULL,
    FOREIGN KEY (Author_ID) REFERENCES authors(Author_ID)
    );

--Insert data into books table--
INSERT INTO books(Book_ID,Book_title,Author_ID)
VALUES (1,"The Univers",101),
(2,"Gym Life",102),
(3,"My Freedom",103),
(4,"The Seagule",104);
