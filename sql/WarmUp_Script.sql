DROP TABLE LocationsVal;
CREATE TABLE LocationsVal (
    LocationID INT NOT NULL AUTO_INCREMENT UNIQUE,
    Type_T ENUM('Head', 'Branch') NOT NULL,
    Name_N VARCHAR(100) NOT NULL,
    Address VARCHAR(255),
    City VARCHAR(100),
    Province VARCHAR(100),
    PostalCode VARCHAR(10),
    PhoneNumbers VARCHAR(100),
    WebAddress VARCHAR(255),
    MaxCapacity INT
);


INSERT INTO LocationsVal (Type_T, Name_N, Address, City, Province, PostalCode, PhoneNumbers, WebAddress,MaxCapacity)
VALUE
('Head', 'Main Headquarters', '123 Main St', 'Montreal', 'Quebec', 'H1A1A1', '555-1234', 'http://mainhq.com',500),
('Branch', 'Downtown Branch', '456 Center St', 'Quebec City', 'Quebec', 'G2B2B2', '555-5678', 'http://downtownbranch.com', 150),
('Branch', 'North Branch', '789 North Rd', 'Laval', 'Quebec', 'H7N3C3', '555-9101', 'http://northbranch.com', 200),
('Head', 'East Headquarters', '1010 East Ave', 'Sherbrooke', 'Quebec', 'J1J4D4', '555-1213', 'http://easthq.com', 300),
('Branch', 'South Branch', '1111 South St', 'Longueuil', 'Quebec', 'J4J5E5', '555-1415', 'http://southbranch.com', 100),
('Head', 'West Headquarters', '1212 West Blvd', 'Gatineau', 'Quebec', 'J8J6F6', '555-1617', 'http://westhq.com', 250),
('Branch', 'Central Branch', '1313 Center Pkwy', 'Trois-Rivières', 'Quebec', 'G9A7G7', '555-1819', 'http://centralbranch.com', 180),
('Branch', 'Suburban Branch', '1414 Suburban Ln', 'Saguenay', 'Quebec', 'G7H8H8', '555-2021', 'http://suburbanbranch.com', 120),
('Branch', 'West Island Branch', '1515 Lakeshore Dr', 'Pointe-Claire', 'Quebec', 'H9R9R9', '555-2223', 'http://westislandbranch.com', 130),
('Head', 'North Headquarters', '1616 Northern Ave', 'Chicoutimi', 'Quebec', 'G7G9G9', '555-2425', 'http://northhq.com', 280);

SELECT * FROM LocationsVal;
SELECT COUNT(*) FROM LocationsVal;




