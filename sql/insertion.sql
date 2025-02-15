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

INSERT INTO Personnel (FirstName, LastName, DateOfBirth, SocialSecurityNumber, MedicareCardNumber, PhoneNumber, Address, City, Province, PostalCode, EmailAddress, Role, Mandate, LocationID, StartDate, EndDate)
VALUES
('John', 'Doe', '1985-05-12', '123-45-6789', 'AB1234567890', '555-1001', '101 Main St', 'Montreal', 'Quebec', 'H1A1A1', 'john.doe@example.com', 'Administrator', 'Salaried', 1, '2020-01-15', NULL),
('Jane', 'Smith', '1990-11-23', '987-65-4321', 'CD9876543210', '555-2002', '202 Center St', 'Quebec City', 'Quebec', 'G2B2B2', 'jane.smith@example.com', 'Captain', 'Volunteer', 2, '2019-09-01', '2023-09-01'),
('Alice', 'Johnson', '1975-03-04', '555-55-5555', 'EF5555555555', '555-3003', '303 North Rd', 'Laval', 'Quebec', 'H7N3C3', 'alice.johnson@example.com', 'Coach', 'Salaried', 3, '2018-06-20', NULL),
('Bob', 'Williams', '1980-07-15', '666-66-6666', 'GH6666666666', '555-4004', '404 East Ave', 'Sherbrooke', 'Quebec', 'J1J4D4', 'bob.williams@example.com', 'Assistant Coach', 'Volunteer', 4, '2021-03-10', '2022-12-31'),
('Carol', 'Brown', '1992-09-29', '777-77-7777', 'IJ7777777777', '555-5005', '505 South St', 'Longueuil', 'Quebec', 'J4J5E5', 'carol.brown@example.com', 'Other', 'Salaried', 5, '2022-05-14', NULL),
('David', 'Miller', '1988-12-17', '888-88-8888', 'KL8888888888', '555-6006', '606 West Blvd', 'Gatineau', 'Quebec', 'J8J6F6', 'david.miller@example.com', 'Administrator', 'Volunteer', 6, '2020-02-25', '2024-02-25'),
('Eve', 'Wilson', '1978-02-22', '999-99-9999', 'MN9999999999', '555-7007', '707 Center Pkwy', 'Trois-Rivières', 'Quebec', 'G9A7G7', 'eve.wilson@example.com', 'Captain', 'Salaried', 7, '2019-10-05', NULL),
('Frank', 'Garcia', '1995-01-18', '111-11-1111', 'OP1111111111', '555-8008', '808 Suburban Ln', 'Saguenay', 'Quebec', 'G7H8H8', 'frank.garcia@example.com', 'Coach', 'Volunteer', 8, '2021-07-21', NULL),
('Grace', 'Lee', '1982-08-09', '222-22-2222', 'QR2222222222', '555-9009', '909 Urban Dr', 'Montreal', 'Quebec', 'H2X3K8', 'grace.lee@example.com', 'Administrator', 'Salaried', 9, '2022-01-12', NULL),
('Henry', 'Davis', '1971-10-30', '333-33-3333', 'ST3333333333', '555-1010', '1010 Downtown Blvd', 'Quebec City', 'Quebec', 'G1A4B7', 'henry.davis@example.com', 'Coach', 'Volunteer', 10, '2018-11-17', NULL);

INSERT INTO FamilyMembers (FirstName, LastName, DateOfBirth, SocialSecurityNumber, MedicareCardNumber, PhoneNumber, Address, City, Province, PostalCode, EmailAddress, LocationID)
VALUES
('Michael', 'Brown', '1980-08-15', '222-22-2222', 'QR2222222222', '555-1111', '123 Elm St', 'Montreal', 'Quebec', 'H1A1A1', 'michael.brown@example.com', 1),
('Emily', 'Johnson', '1995-03-27', '333-33-3333', 'ST3333333333', '555-2222', '456 Oak St', 'Quebec City', 'Quebec', 'G2B2B2', 'emily.johnson@example.com', 2),
('David', 'Lee', '1972-10-10', '444-44-4444', 'UV4444444444', '555-3333', '789 Pine St', 'Laval', 'Quebec', 'H7N3C3', 'david.lee@example.com', 3),
('Sarah', 'Miller', '1987-12-05', '555-55-5555', 'WX5555555555', '555-4444', '101 Birch St', 'Sherbrooke', 'Quebec', 'J1J4D4', 'sarah.miller@example.com', 4),
('Daniel', 'Garcia', '1990-06-22', '666-66-6666', 'YZ6666666666', '555-5555', '202 Cedar St', 'Longueuil', 'Quebec', 'J4J5E5', 'daniel.garcia@example.com', 5),
('Sophia', 'Martinez', '1985-09-18', '777-77-7777', 'AB7777777777', '555-6666', '303 Walnut St', 'Gatineau', 'Quebec', 'J8J6F6', 'sophia.martinez@example.com', 6),
('James', 'Davis', '1978-04-14', '888-88-8888', 'CD8888888888', '555-7777', '404 Maple St', 'Trois-Rivières', 'Quebec', 'G9A7G7', 'james.davis@example.com', 7),
('Olivia', 'Wilson', '1992-01-03', '999-99-9999', 'EF9999999999', '555-8888', '505 Chestnut St', 'Saguenay', 'Quebec', 'G7H8H8', 'olivia.wilson@example.com', 8),
('Ethan', 'Martin', '1983-07-24', '111-11-1111', 'GH1111111111', '555-9999', '606 Pine Ln', 'Laval', 'Quebec', 'H7N3J7', 'ethan.martin@example.com', 3),
('Ava', 'Clark', '1991-02-05', '222-22-3333', 'KL2222222222', '555-0000', '707 Elm Dr', 'Montreal', 'Quebec', 'H2X3L8', 'ava.clark@example.com', 1);

INSERT INTO ClubMembers (FirstName, LastName, DateOfBirth, Height, Weight, SocialSecurityNumber, MedicareCardNumber, PhoneNumber, Address, City, Province, PostalCode, FamilyMemberID)
VALUES
('Liam', 'Brown', '2000-01-15', 180.25, 75.50, '555-55-1111', 'AB1234567891', '555-1111', '123 Elm St', 'Montreal', 'Quebec', 'H1A1A1', 1),
('Emma', 'Johnson', '1998-03-27', 165.50, 65.00, '555-55-2222', 'CD9876543211', '555-2222', '456 Oak St', 'Quebec City', 'Quebec', 'G2B2B2', 2),
('Noah', 'Lee', '2002-10-10', 170.80, 70.25, '555-55-3333', 'EF5555555556', '555-3333', '789 Pine St', 'Laval', 'Quebec', 'H7N3C3', 3),
('Olivia', 'Miller', '2001-12-05', 160.75, 55.50, '555-55-4444', 'GH6666666667', '555-4444', '101 Birch St', 'Sherbrooke', 'Quebec', 'J1J4D4', 4),
('Lucas', 'Garcia', '1999-06-22', 175.30, 80.00, '555-55-5556', 'IJ7777777778', '555-5555', '202 Cedar St', 'Longueuil', 'Quebec', 'J4J5E5', 5),
('Ava', 'Martinez', '2003-09-18', 158.25, 60.75, '555-55-6666', 'KL8888888889', '555-6666', '303 Walnut St', 'Gatineau', 'Quebec', 'J8J6F6', 6),
('Ethan', 'Davis', '1997-04-14', 180.90, 85.50, '555-55-7777', 'MN9999999990', '555-7777', '404 Maple St', 'Trois-Rivières', 'Quebec', 'G9A7G7', 7),
('Sophia', 'Wilson', '2000-01-03', 167.40, 62.25, '555-55-8888', 'OP1111111112', '555-8888', '505 Chestnut St', 'Saguenay', 'Quebec', 'G7H8H8', 8),
('Mia', 'Martinez', '2004-05-19', 162.50, 58.00, '555-55-9999', 'QR1234567892', '555-9999', '707 Urban Dr', 'Montreal', 'Quebec', 'H2X3K8', 1),
('Alexander', 'Clark', '2001-11-22', 177.60, 78.50, '555-55-0000', 'ST9876543212', '555-0000', '808 Suburban Ln', 'Saguenay', 'Quebec', 'G7H8H8', 8);

INSERT INTO Payments (ClubMemberID, PaymentDate, Amount, PaymentMethod, MembershipYear)
VALUES
(1, '2024-01-15', 100.00, 'Credit Card', 2024),
(2, '2024-02-10', 150.00, 'Debit Card', 2024),
(3, '2024-03-05', 200.00, 'Cash', 2024),
(4, '2024-04-20', 120.00, 'Credit Card', 2024),
(5, '2024-05-18', 180.00, 'Debit Card', 2024),
(6, '2024-06-12', 250.00, 'Cash', 2024),
(7, '2024-07-08', 90.00, 'Credit Card', 2024),
(8, '2024-08-23', 130.00, 'Debit Card', 2024),
(9, '2024-09-15', 170.00, 'Credit Card', 2024),
(10, '2024-10-12', 110.00, 'Cash', 2024);

INSERT INTO PersonnelLocations (PersonnelID, LocationID, StartDate, EndDate)
VALUES
(1, 1, '2023-01-10', '2024-01-10'),
(2, 2, '2022-03-15', '2023-03-15'),
(3, 3, '2021-06-20', '2022-06-20'),
(4, 4, '2020-09-01', '2021-09-01'),
(5, 5, '2021-11-12', NULL),
(6, 6, '2022-04-05', '2023-04-05'),
(7, 7, '2023-07-23', '2024-07-23'),
(8, 8, '2022-09-14', NULL);

INSERT INTO PersonnelLocations (PersonnelID, LocationID, StartDate, EndDate)
VALUES
(1, 1, '2023-01-10', '2024-01-10'),
(2, 2, '2022-03-15', '2023-03-15'),
(3, 3, '2021-06-20', '2022-06-20'),
(4, 4, '2020-09-01', '2021-09-01'),
(5, 5, '2021-11-12', NULL),
(6, 6, '2022-04-05', '2023-04-05'),
(7, 7, '2023-07-23', '2024-07-23'),
(8, 8, '2022-09-14', NULL),
(9, 9, '2023-05-30', '2024-05-30'),
(10, 10, '2022-12-01', '2023-12-01');

INSERT INTO FamilyMemberClubMember (FamilyMemberID, ClubMemberID, Relationship)
VALUES
(1, 1, 'Father'),
(2, 2, 'Mother'),
(3, 3, 'Grandfather'),
(4, 4, 'Grandmother'),
(5, 5, 'Tutor'),
(6, 6, 'Partner'),
(7, 7, 'Friend'),
(8, 8, 'Other'),
(9, 3, 'Partner'),
(10, 4, 'Tutor');

INSERT INTO ClubMemberLocations (ClubMemberID, LocationID)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9,0),
(10,10);

INSERT INTO FamilyMemberLocations (FamilyMemberID, LocationID)
VALUES
(1, 2),
(2, 2),
(3, 3),
(4, 4),
(5, 4),
(6, 5),
(7, 5),
(8, 6),
(9,7),
(10,7);
