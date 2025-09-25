--insert data into the table--
INSERT INTO user(id,name,city,score,bonus,challenge)
VALUES (1,'Raj','Chennai',88,5,'Fitness'),
(2,'Anu','Mumbai',91,NULL,'Diet'),
(3,'Ravi','Chennai',78,3,'Fitness'),
(4,'Meena','Delhi',82,NULL,'Diet'),
(5,'Farah','Mumbai',95,4,'Fitness'),
(6,'Kiran','Pune',70,NULL,'Yoga'),
(7,'Latha','Pune',87,NULL,'Fitness');
--Show the details of users whose score is greater than the average score across all users.--
SELECT * FROM user
WHERE score > (SELECT AVG(score) FROM user);

--show same challenge users as (usernamed 'FArah')--
SELECT name
FROM user
WHERE challenge = (SELECT challenge FROM user WHERE name = 'Farah');
