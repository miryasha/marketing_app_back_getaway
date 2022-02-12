
--========================u_address_tbl===================================

CREATE TABLE IF NOT EXISTS u_address_tbl
(
	u_address_tbl_id int(10) NOT NULL AUTO_INCREMENT,
    tel_pri varchar(20) NOT NULL UNIQUE,
    tel_2  varchar(20) DEFAULT NULL, 
    tel_3 varchar(20) DEFAULT NULL,
    u_address_pri varchar(255) NOT NULL UNIQUE,
    city varchar(255) NOT NULL ,
    zip_code varchar(20) NOT NULL,
    u_address_notes varchar(255) DEFAULT NULL,

	PRIMARY KEY (u_address_tbl_id),

);

INSERT INTO u_address_tbl (tel_pri, u_address_pri, city, zip_code ) VALUES   
(); 



---================u_host_info_tbl===============


CREATE TABLE IF NOT EXISTS u_host_info_tbl
(
	u_host_info_tb_id int(10) NOT NULL AUTO_INCREMENT,

    u_host_name varchar(255) NOT NULL,
    u_domain_name varchar(255) NOT NULL,

    u_db_host varchar(255) NOT NULL DEFAULT 'localhost',
    u_db_port varchar(255) NOT NULL DEFAULT '3306',
    u_db_user_name varchar(255) NOT NULL UNIQUE,
    u_db_pwd varchar(255) NOT NULL UNIQUE,
    u_dbase_name varchar(255) NOT NULL UNIQUE,

    u_mail_host varchar(255) DEFAULT NULL,
    u_mail_port varchar(255) DEFAULT NULL, 
    u_mail_auth_user varchar(255) DEFAULT NULL,
    u_mail_auth_pass varchar(255) DEFAULT NULL,

    u_host_info_notes varchar(255) DEFAULT NULL,

	PRIMARY KEY (u_host_info_tb_id),

);

INSERT INTO u_host_info_tbl (u_host_name, u_domain_name, u_db_user_name, u_db_pwd, u_dbase_name) VALUES   
(); 



---================u_authorize_tbl===============

CREATE TABLE IF NOT EXISTS u_authorize_tbl
(
	u_authorize_tbl_id int(10) NOT NULL AUTO_INCREMENT,
    national_id_num varchar(20) DEFAULT NULL,
    u_authorize_notes varchar(255) DEFAULT NULL,

	PRIMARY KEY (u_authorize_tbl_id),
 
);


---================u_payment_info_tbl===============

CREATE TABLE IF NOT EXISTS u_payment_info_tbl
(
	u_payment_info_tbl_id int(10) NOT NULL AUTO_INCREMENT,
  

    u_payment_date varchar(20) NOT NULL ,
    u_payment_amount varchar(40) NOT NULL ,
    u_payment_ref_num varchar(40) NOT NULL ,
    u_payment_confirmation_num varchar(40) DEFAULT NULL,
    u_payment_notes varchar(255) DEFAULT NULL,

	PRIMARY KEY (u_payment_info_tbl_id),
    
);


---================u_services_info_tbl===============


CREATE TABLE IF NOT EXISTS u_services_info_tbl
(
	u_services_info_tbl_id int(10) NOT NULL AUTO_INCREMENT,
 

    u_services_cpanel varchar(5) NOT NULL DEFAULT 'ture',
    u_services_bot varchar(5) NOT NULL DEFAULT 'false',
    u_services_inventory varchar(5) NOT NULL DEFAULT 'false',
    u_services_accounting varchar(5) NOT NULL DEFAULT 'false',

	PRIMARY KEY (u_services_info_tbl_id),
   
);


---- u_login_tbl --


CREATE TABLE IF NOT EXISTS u_login_tbl
(
	u_login_tbl_id int(10) NOT NULL AUTO_INCREMENT,
    username  varchar(20) NOT NULL UNIQUE,
    email  varchar(20) NOT NULL UNIQUE,
    pwd varchar(255) NOT NULL,
    u_role varchar(20) NOT NULL DEFAULT 'user',
    u_last_login date NOT NULL default(CURRENT_DATE), 
               
	PRIMARY KEY (u_login_tbl_id) 
);


INSERT INTO u_tbl (username, email, pwd, u_role, u_host,is_redirect ) VALUES   
("yasha6081", "yasha608@gmail.com", "1234!@#$", 'admin', 'www.miryasha.com', 'false');  




---- u_info_tbl --


CREATE TABLE IF NOT EXISTS u_info_tbl
(
	u_info_tbl_id int(10) NOT NULL AUTO_INCREMENT,
    u_name  varchar(20) NOT NULL,
    u_family_name  varchar(20) NOT NULL,
    u_created_date date NOT NULL default(CURRENT_DATE), 
               
	PRIMARY KEY (u_info_tbl_id), 

);
