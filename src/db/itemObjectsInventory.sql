

--=== warehouse_info_tbl --===

CREATE TABLE IF NOT EXISTS warehouse_info_tbl
(
	warehouse_info_tbl_id int(10) NOT NULL AUTO_INCREMENT,
    warehouse_name varchar(50) NOT NULL UNIQUE,
    warehouse_location varchar(255) NOT NULL, 

    warehouse_person_in_charge varchar(20)  DEFAULT NULL,
    warehouse_note varchar(255) DEFAULT NULL,
               
	PRIMARY KEY (warehouse_info_tbl_id) 
);

INSERT INTO warehouse_info_tbl (warehouse_name, warehouse_location ) VALUES   
("khone", "westeland drive");  

--==========suppliyer_info_tbl --=======

CREATE TABLE IF NOT EXISTS suppliyer_info_tbl
(
	suppliyer_info_tbl_id int(10) NOT NULL AUTO_INCREMENT,
    suppliyer_name varchar(50) NOT NULL UNIQUE,

    suppliyer_address varchar(255) NOT NULL, 
    suppliyer_city varchar(255) DEFAULT NULL,
    suppliyer_zip_code varchar(20) DEFAULT NULL,
    suppliyer_tel_1 varchar(50) DEFAULT NULL,
    suppliyer_tel_2 varchar(50) DEFAULT NULL,
    suppliyer_tel_3 varchar(50) DEFAULT NULL,
    suppliyer_email varchar(20) DEFAULT NULL, 
    suppliyer_note varchar(255) DEFAULT NULL,
               
	PRIMARY KEY (suppliyer_info_tbl_id) 
);

INSERT INTO suppliyer_info_tbl (suppliyer_name, suppliyer_address) VALUES   
("walmart", "newyourk steed");  


---====== products_tbl --=========


CREATE TABLE IF NOT EXISTS products_tbl
(
	products_tbl_id int(10) NOT NULL AUTO_INCREMENT,
    products_name varchar(255) NOT NULL UNIQUE,
    products_barcode varchar(255) DEFAULT NULL,
    products_note varchar(255) DEFAULT NULL,
    -- products_image_link_prime varchar(50) DEFAULT NULL,
    -- products_image_link_prime varchar(50) DEFAULT NULL,
    -- products_image_link_prime varchar(50) DEFAULT NULL,
    -- products_image_link_prime varchar(50) DEFAULT NULL,
           
	PRIMARY KEY (products_tbl_id) 
);

INSERT INTO products_tbl (products_name, products_barcode) VALUES   
("pen", "23423423");  



---====== counting_units_tbl --=========

CREATE TABLE IF NOT EXISTS counting_units_tbl
(
	counting_units_tbl_id int(10) NOT NULL AUTO_INCREMENT,
    counting_units_name varchar(255) NOT NULL UNIQUE,         
	PRIMARY KEY (counting_units_tbl_id) 
);



---====== shipper_tbl --=========

CREATE TABLE IF NOT EXISTS shipper_tbl
(
	shipper_tbl_id int(10) NOT NULL AUTO_INCREMENT,
    shipper_name varchar(255) NOT NULL UNIQUE,         
	PRIMARY KEY (shipper_tbl_id ) 
);


---====== reorder_alarm_tbl --=========

CREATE TABLE IF NOT EXISTS reorder_alarm_tbl
(
	reorder_alarm_tbl_id int(10) NOT NULL AUTO_INCREMENT,
    amount int(4) NOT NULL DEFAULT 0,         
	PRIMARY KEY (reorder_alarm_tbl_id ) 
);

--=== inventory_items_shipped_tbl ==--


CREATE TABLE IF NOT EXISTS inv_items_shipped_tbl
(
	inv_items_shipped_tbl_id int(10) NOT NULL AUTO_INCREMENT,
    inv_entery_date date default(CURRENT_DATE),  

    warehouse_info_tbl_id int(10) NOT NULL,
    suppliyer_info_tbl_id int(10) NOT NULL,
    products_tbl_id int(10) NOT NULL,
    counting_units_tbl_id int(10) NOT NULL,
    shipper_tbl_id int(10) NOT NULL,
    reorder_alarm_tbl_id int(10) NOT NULL,


    
    quantity int(10) NOT NULL DEFAULT 1,
    purchase_price int(10) NOT NULL,
    inv_items_shipped_note varchar(255) DEFAULT NULL,

               
	PRIMARY KEY (inv_items_shipped_tbl_id) ,

    FOREIGN KEY (warehouse_info_tbl_id) REFERENCES warehouse_info_tbl (warehouse_info_tbl_id) 
    ON DELETE CASCADE 
    ON UPDATE CASCADE,

    FOREIGN KEY (suppliyer_info_tbl_id) REFERENCES suppliyer_info_tbl (suppliyer_info_tbl_id) 
    ON DELETE CASCADE 
    ON UPDATE CASCADE,

    FOREIGN KEY (products_tbl_id) REFERENCES products_tbl (products_tbl_id) 
    ON DELETE CASCADE 
    ON UPDATE CASCADE,

    FOREIGN KEY (counting_units_tbl_id) REFERENCES counting_units_tbl (counting_units_tbl_id) 
    ON DELETE CASCADE 
    ON UPDATE CASCADE,

    FOREIGN KEY (shipper_tbl_id) REFERENCES shipper_tbl (shipper_tbl_id) 
    ON DELETE CASCADE 
    ON UPDATE CASCADE,

    FOREIGN KEY (reorder_alarm_tbl_id) REFERENCES reorder_alarm_tbl (reorder_alarm_tbl_id) 
    ON DELETE CASCADE 
    ON UPDATE CASCADE
);




----- reports ---------
INSERT INTO inv_items_shipped_tbl (warehouse_info_tbl_id, suppliyer_info_tbl_id) VALUES   
(1, 1);  



SELECT column_name(s)
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;


SELECT column_name(s) FROM table1
UNION ALL
SELECT column_name(s) FROM table2;


SELECT * FROM table1
UNION ALL
SELECT column_name(s) FROM table2;