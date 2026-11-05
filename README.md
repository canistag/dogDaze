# Dog Daze Database
A MySQL relational database modeling a dog grooming and boarding business.

<img width="1025" height="812" alt="image" src="https://github.com/user-attachments/assets/b8b7e2b0-0585-45d7-9733-fbacf919fefd" />


# Tech Stack
MySQL

# Tables
- owner_info — customer contact records
- dog_info — dog profiles including vaccination records, diet, and vet information
- package — available services and pricing
- order_info — transaction records linking owners, dogs, and packages with boarding dates

# Concepts Demonstrated:
- Relational database design with multiple linked tables
- Primary and foreign key constraints enforcing referential integrity
- AUTO_INCREMENT for ID management
- Data types including VARCHAR, INT, and DATE
- Sample data insertion across related tables

# Decisions and Future Updates

## Dog Age/Weight as a VARCHAR
This needs to be changed to a value and unit of measurement in respective columns. 

## Phone numbers as VARCHAR
This was done in case there was an extension or leading zero. 

## Order Info as the Receipts Log
The order_info table automatically generates a receipt by logging relevant information inside. Because the price is dependent on the package table, all the records change if the price does. In a future update, this will be added to accommodate growing businesses.
