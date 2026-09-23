# Dog Daze Database
A MySQL relational database modeling a dog grooming and boarding business.

# Tech Stack
MySQL

# Tables
- owner_info — customer contact records
- dog_info — dog profiles including vaccination records, diet, and vet information
- package — available services and pricing
- order_info — transaction records linking owners, dogs, and packages with boarding dates

# Concepts Demonstrated:
Relational database design with multiple linked tables
Primary and foreign key constraints enforcing referential integrity
AUTO_INCREMENT for ID management
Data types including VARCHAR, INT, and DATE
Sample data insertion across related tables

# How to Run in MySQL
``` bash
git clone https://github.com/canistag/dogDaze.git
cd dogDaze
mysql -u root -p -e "CREATE DATABASE dogdaze;"

mysql -u root -p dogdaze < dogDaze.sql

mysql -u root -p dogdaze
