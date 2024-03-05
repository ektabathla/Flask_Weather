#CREATE DATABASE weather_app;
USE weather_app;
CREATE TABLE user(id INT PRIMARY KEY AUTO_INCREMENT,
                   name VARCHAR(100) NOT NULL,
                   password VARCHAR(100) NOT NULL,
                   email VARCHAR(100) NOT NULL
                   );
                   
                   
CREATE TABLE city(uid INT,city VARCHAR(100) NOT NULL,
		   CONSTRAINT `one user many cities` FOREIGN KEY (uid) REFERENCES user(id)
           ON DELETE CASCADE ON UPDATE CASCADE );
           
COMMIT;  

INSERT INTO user(id,name,password,email)
       VALUES (1, "EKTA BATHLA", "redhat", "ektabathla97@gmail.com");
       
SELECT * FROM user;       

INSERT INTO city (uid,city) VALUES (1, "jaipur"), (1, "delhi"), (1, "tonk");

SELECT * FROM city;

COMMIT;

