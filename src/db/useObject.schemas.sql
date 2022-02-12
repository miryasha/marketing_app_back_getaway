
--parent table


CREATE TABLE IF NOT EXISTS u_login_tbl
(
	u_login_tbl_id int(10) NOT NULL AUTO_INCREMENT,
    username  varchar(20) NOT NULL UNIQUE,
    email  varchar(20) NOT NULL UNIQUE,
    pwd varchar(255) NOT NULL,
    u_role varchar(20) NOT NULL DEFAULT 'user',
    u_host varchar(255) NOT NULL UNIQUE,
    is_redirect varchar(5) NOT NULL DEFAULT 'true',
    u_last_login date default(CURRENT_DATE), 
    u_created_date date default(CURRENT_DATE),  
               
	PRIMARY KEY (u_login_tbl_id) 
);


INSERT INTO u_tbl (username, email, pwd, u_role, u_host,is_redirect ) VALUES   
("yasha6081", "yasha608@gmail.com", "1234!@#$", 'admin', 'www.miryasha.com', 'false');  


--========================u_address_tbl===================================

CREATE TABLE IF NOT EXISTS u_address_tbl
(
	u_address_tbl_id int(10) NOT NULL AUTO_INCREMENT,
    u_login_tbl_id      int(10) NOT NULL,
    tel_pri varchar(20) NOT NULL ,
    tel_2  varchar(20) DEFAULT NULL, 
    tel_3 varchar(20) DEFAULT NULL,
    u_address_pri varchar(255) NOT NULL,
    city varchar(255) NOT NULL ,
    zip_code varchar(20) NOT NULL,
    u_address_notes varchar(255) DEFAULT NULL,

	PRIMARY KEY (u_address_tbl_id),
    -- FOREIGN KEY (u_id) REFERENCES u_login_tbl (u_login_tbl_id) 
    -- ON DELETE CASCADE 
    -- ON UPDATE CASCADE
);

INSERT INTO u_address_tbl (u_login_tbl_id,tel_pri, u_address_pri, city, zip_code ) VALUES   
(1,"2247398", "Wester land drive", "Tbroz", '4903333049dxs'); 



---================u_host_info_tbl===============


CREATE TABLE IF NOT EXISTS u_host_info_tbl
(
	u_host_info_tb_id int(10) NOT NULL AUTO_INCREMENT,
    u_login_tbl_id      int(10) NOT NULL,

    db_host varchar(255) NOT NULL DEFAULT 'localhost',
    db_port varchar(255) NOT NULL DEFAULT '3306',
    db_user_name varchar(255) NOT NULL UNIQUE,
    db_pwd varchar(255) NOT NULL UNIQUE,
    dbase_name varchar(255) NOT NULL UNIQUE,

    mail_host varchar(255) DEFAULT NULL,
    mail_port varchar(255) DEFAULT NULL, 
    mail_auth_user varchar(255) DEFAULT NULL,
    mail_auth_pass varchar(255) DEFAULT NULL,

	PRIMARY KEY (u_host_info_tbl_id),
    -- FOREIGN KEY (u_id) REFERENCES u_login_tbl (u_login_tbl_id) 
    -- ON DELETE CASCADE 
    -- ON UPDATE CASCADE
);

INSERT INTO u_host_info_tbl (u_login_tbl_id, db_user_name, db_pwd, dbase_name ) VALUES   
(1,"yasagdusdus", "Wsdfdsfsdve", "Tbroz", 'mydb'); 



---================u_authorize_tbl===============

CREATE TABLE IF NOT EXISTS u_authorize_tbl
(
	u_authorize_tbl_id int(10) NOT NULL AUTO_INCREMENT,
    u_login_tbl_id     int(10) NOT NULL,
    national_id_num varchar(20) DEFAULT NULL,

	PRIMARY KEY (u_authorize_tbl_id),
    -- FOREIGN KEY (u_id) REFERENCES u_login_tbl (u_login_tbl_id) 
    -- ON DELETE CASCADE 
    -- ON UPDATE CASCADE
);


---================u_payment_info_tbl===============

CREATE TABLE IF NOT EXISTS u_payment_info_tbl
(
	u_payment_info_tbl_id int(10) NOT NULL AUTO_INCREMENT,
    u_login_tbl_id     int(10) NOT NULL,

    u_payment_date varchar(20) NOT NULL ,
    u_payment_amount varchar(40) NOT NULL ,
    u_payment_ref_num varchar(40) NOT NULL ,
    u_payment_confirmation_num varchar(40) DEFAULT NULL,
    u_payment_notes varchar(255) DEFAULT NULL,

	PRIMARY KEY (u_payment_info_tbl_id),
    -- FOREIGN KEY (u_id) REFERENCES u_login_tbl (u_login_tbl_id) 
    -- ON DELETE CASCADE 
    -- ON UPDATE CASCADE
);


---================u_services_info_tbl===============


CREATE TABLE IF NOT EXISTS u_services_info_tbl
(
	u_services_info_tbl_id int(10) NOT NULL AUTO_INCREMENT,
    u_login_tbl_id     int(10) NOT NULL,

    u_services_cpanel varchar(5) NOT NULL DEFAULT 'ture',
    u_services_bot varchar(5) NOT NULL DEFAULT 'false',
    u_services_inventory varchar(5) NOT NULL DEFAULT 'false',
    u_services_accounting varchar(5) NOT NULL DEFAULT 'false',

	PRIMARY KEY (u_services_info_tbl_id),
    -- FOREIGN KEY (u_id) REFERENCES u_login_tbl (u_login_tbl_id) 
    -- ON DELETE CASCADE 
    -- ON UPDATE CASCADE
);
