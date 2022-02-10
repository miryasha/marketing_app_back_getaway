
--parent table


CREATE TABLE u_tbl
(
	u_id int NOT NULL AUTO_INCREMENT,
    username  varchar(20) NOT NULL UNIQUE,
    email  varchar(20) NOT NULL UNIQUE,
    pwd varchar(255) NOT NULL,
               
	PRIMARY KEY (u_id) 
);


INSERT INTO u_tbl (username, email, pwd,) VALUES   
("yasha6081", "yasha608@gmail.com", "1234!@#$");  
