SHOW DATABASE; 

CREATE TABLE admins (
adminID        INT(11)       NOT NULL  AUTO_INCREMENT,
emailAddress   VARCHAR(255)  NOT NULL  UNIQUE,
password       CHAR(64)      NOT NULL,
firstName      VARCHAR(60)   NOT NULL,
lastName        VARCHAR(60)   NOT NULL,
PRIMARY KEY     (adminID)
);

SHOW TABLES;

SHOW CREATE TABLE admins;

DESCRIBE admins;

INSERT INTO admins
(emailAddress, password, firstName, lastName)
VALUES
('taylor@guitarshop.com', SHA2('myLongP@ssword',256), 'Taylor', 'Swift');
INSERT INTO admins
(emailAddress, password, firstName, lastName)
VALUES
('Pinkfloyd@guitarshop.com', SHA2('myLongP@ssword', 256), 'Pink', 'Floyd');




select * from admins;
SELECT emailAddress,firstName FROM admins ORDER BY firstName;
SELECT * FROM admins WHERE lastName ='Swift';
UPDATE admins SET emailAddress ="Bob.Marley@guitarshop.com" WHERE adminID =15;
UPDATE admins SET emailAddress = "Archive@guitarshop.com", password = SHA2("mySh0rtP@ssword",256) WHERE adminID =13 ;
DELETE FROM admins WHERE adminID = 13;



