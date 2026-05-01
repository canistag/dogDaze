DROP DATABASE IF EXISTS dog_daze_db;
CREATE DATABASE IF NOT EXISTS dog_daze_db;
USE dog_daze_db;

CREATE TABLE IF NOT EXISTS owner_info (
    owner_id INT AUTO_INCREMENT,
    owner_first VARCHAR(50),
    owner_last VARCHAR(50),
    owner_phone VARCHAR(10),
    owner_email VARCHAR(100),
    CONSTRAINT owner_info_pk PRIMARY KEY (owner_id)
);
INSERT INTO owner_info VALUES
(1, 'Grayson', 'Moriel', 3612223333, 'tigosun@gmail.com'),
(DEFAULT, 'Marisa', 'Martinez', 3619296567, 'mmartinez346@delmar.edu'),
(DEFAULT, 'Destinee', 'Asuncion', 3613334444, 'dasuncion@gmail.com'),
(DEFAULT, 'Paul', 'Brown', 3615556666, 'pb123@webdmc.delmar.edu')
;

CREATE TABLE IF NOT EXISTS dog_info (
    dog_id INT AUTO_INCREMENT,
    dog_last_name VARCHAR(20),
    dog_first_name VARCHAR(20),
    spay_neuter VARCHAR(1),
    dog_color VARCHAR(20),
    dog_weight VARCHAR(20),
    dog_age VARCHAR(20),
    expir_rabies DATE,
    expir_distemper DATE,
    expir_parvo DATE,
    expir_fecal DATE,
    dog_friendly VARCHAR(1),
    usual_vet VARCHAR(50),
    diet VARCHAR(50),
    owner_id INT,
    CONSTRAINT dog_info_pk PRIMARY KEY (dog_id),
    CONSTRAINT dog_info_fk_owner_info FOREIGN KEY (owner_id)
        REFERENCES owner_info (owner_id)
);
INSERT INTO dog_info VALUES
(1, 'Moriel', 'Lucky', 'Y', 'Bl/Tan', '7 lbs.', '14 Yrs', '2024-01-01', '2024-01-01', '2024-01-01', '2024-01-01', 'Y', 'VCA', 'Dry', 1),
(DEFAULT, 'Martinez', 'Luke', 'Y', 'Bl/W', '50 lbs.', '4 yrs', '2025-01-01', '2025-02-01', '2025-03-01', '2025-04-01', 'Y', 'Autumn Moody', 'Dry', 2),
(DEFAULT, 'Martinez', 'Oates', 'Y', 'Br/Bl/W', '42 lbs.', '3 yrs.', '2025-01-11', '2025-01-21', '2025-01-31', '2025-02-11', 'Y', 'Autumn Moody', 'Dry', 2),
(DEFAULT, 'Martinez', 'Eevee', 'Y', 'Br/W', '40 lbs.', '3 yrs.', '2025-02-11', '2025-03-21', '2025-02-21', '2025-03-14', 'Y', 'Autumn Moody', 'Dry', 2),
(DEFAULT, 'Moriel', 'Daisy', 'Y', 'Bl/Tan', '10 lbs.', '16 yrs', '2024-01-05', '2024-01-06', '2024-01-07', '2024-01-08', 'Y', 'VCA', 'Dry', 1),
(DEFAULT, 'Brown', 'Fluffy', 'Y', 'White', '25 lbs.', '8 yrs.', '2025-03-15', '2025-03-16', '2025-03-20', '2025-03-22', 'Y', 'Belcher', 'Wet', 4)
;


CREATE TABLE IF NOT EXISTS package (
	package_id INT AUTO_INCREMENT,
    package_name VARCHAR(20),
    price_per_day INT(4),
    CONSTRAINT package_pk PRIMARY KEY (package_id)
);
INSERT INTO package VALUES
	(1, 'Daycare Full', 22),
	(DEFAULT, 'Daycare Half', 17),
	(DEFAULT, 'Temperament Test', 15),
	(DEFAULT, 'Boarding', 45),
	(DEFAULT, 'Grooming', 50)
;

CREATE TABLE IF NOT EXISTS order_info (
    order_id INT AUTO_INCREMENT,
    package_id INT,
    dog_id INT,
    owner_id INT,
    board_date DATE,
    pickup_date DATE,
    account_id INT,
    CONSTRAINT order_info_pk PRIMARY KEY (order_id),
	CONSTRAINT order_info_fk_owner_info FOREIGN KEY (owner_id)
        REFERENCES owner_info (owner_id),
	CONSTRAINT order_info_fk_package FOREIGN KEY (package_id)
        REFERENCES package (package_id),
	CONSTRAINT order_info_fk_dog_info FOREIGN KEY (dog_id)
        REFERENCES dog_info (dog_id)
);

INSERT INTO order_info VALUES
(1, 4, 1, 1, '2025-04-11','2025-04-18', 1),
(DEFAULT, 5, 2, 2, '2025-04-15', '2025-04-15', 2),
(DEFAULT, 1, 3, 2, '2025-04-16', '2025-04-16', 2),
(DEFAULT, 2, 4, 2, '2025-04-17', '2025-04-17', 2),
(DEFAULT, 3, 5, 3, '2025-04-18', '2025-04-18', 1),
(DEFAULT, 5, 5, 3, '2025-04-19', '2025-04-19', 1),
(DEFAULT, 1, 6, 4, '2025-04-20', '2025-04-22', 3)
;