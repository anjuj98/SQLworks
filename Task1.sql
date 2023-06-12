CREATE TABLE Users 
(
  id            INT         PRIMARY KEY  IDENTITY(1,1),
  first_name    VARCHAR(50),
  last_name     VARCHAR(50),
  date_of_birth DATE,
  age           INT,
  gender        VARCHAR(20),
  phone_number  INT,
  email_address VARCHAR(50),
  state         VARCHAR(50),
  city          VARCHAR(50),
  username      VARCHAR(50),
  password      VARCHAR(100)

);

ALTER TABLE Users
ALTER COLUMN phone_number VARCHAR(20);

INSERT INTO Users VALUES ('Anju','J','12-11-1998',24,'female',8265432176,'anju@gmail.com','Kerala','Adoor','anju123','anju@1998');
INSERT INTO Users VALUES ('Sreenath','S','11-22-1996',26,'male',8265435486,'appuu@gmail.com','Kerala','Pathanamthitta','appu123','sree@1996');
INSERT INTO Users VALUES ('Arjun','A','01-6-2006',17,'male',9875432176,'arjun@gmail.com','Kerala','Adoor','arjun123','arjun@2006');
INSERT INTO Users VALUES ('Arya','S','05-07-1999',23,'female',9965432176,'arya@gmail.com','Kerala','Adoor','arya123','arya@1999');
INSERT INTO Users VALUES ('Ajith','Kumar','04-08-1999',23,'male',9968762176,'ajith12@gmail.com','Kerala','Adoor','ajith@12sw','ajith878@1999');
INSERT INTO Users VALUES ('Betsy','Babu','02-27-1999',23,'female',9968762134,'betsy009@gmail.com','Kerala','Kannur','betsy@111','betsybabu777@1999');
INSERT INTO Users VALUES ('Sneha','Sajeev','09-20-2000',22,'female',9654327691,'snehasajeev31@gmail.com','Kerala','Idukki','sajeev@$89','sneha8954');
INSERT INTO Users VALUES ('Samuel','Biju','10-18-1998',24,'male',9968732134,'biju76@gmail.com','Tamil Nadu','Coimbatore','samuel765','samuel89@121');
INSERT INTO Users VALUES ('John', 'Doe', '1998-10-18', 24, 'male', 9876543210, 'johndoe@example.com', 'California', 'Los Angeles', 'johndoe123', 'password123');



select * from Users;

/*Updating last_name and city whose id=10*/

UPDATE Users
SET last_name='Lakshmi' ,city='Thrissur' 
WHERE id=10;


/*Deleting a user whose state=kerala and city=kannur*/

DELETE FROM Users
WHERE state='Kerala' AND city='Kannur';

/*select all users whose state is kerala in alphabetic order of first_name*/

SELECT * FROM Users
WHERE state='Kerala'
ORDER BY first_name ASC;







