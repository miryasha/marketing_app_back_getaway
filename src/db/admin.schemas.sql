CREATE TABLE u_tbl
(
	`u_id` int NOT NULL AUTO_INCREMENT,
    `username`  varchar(20) NOT NULL UNIQUE,
    `email`  varchar(20) NOT NULL UNIQUE,
    `password` varchar(255) NOT NULL,
               
	PRIMARY KEY (`u_id`)
);