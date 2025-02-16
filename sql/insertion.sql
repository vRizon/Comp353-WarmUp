INSERT INTO Locations (Type_T, Name_N, Address, City, Province, PostalCode, PhoneNumbers, WebAddress,MaxCapacity)
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

INSERT INTO Personnel (FirstName, LastName, DateOfBirth, SocialSecurityNumber, MedicareCardNumber, PhoneNumber, Address, City, Province, PostalCode, EmailAddress, Role, Mandate)
VALUES
('John', 'Doe', '1980-05-15', '123-45-6789', 'MED123456789', '514-123-4567', '123 Main St', 'Montreal', 'Quebec', 'H1H 1H1', 'john.doe@myvc.com', 'General Manager', 'Salaried'),
('Alice', 'Smith', '1990-08-22', '987-65-4321', 'MED987654321', '514-987-6543', '456 Elm St', 'Montreal', 'Quebec', 'H2H 2H2', 'alice.smith@myvc.com', 'Captain', 'Volunteer'),
('Michael', 'Johnson', '1985-03-10', '456-78-9123', 'MED456789123', '514-456-7890', '789 Oak St', 'Laval', 'Quebec', 'H3H 3H3', 'michael.johnson@myvc.com', 'Coach', 'Salaried'),
('Emily', 'Brown', '1992-11-05', '321-65-9876', 'MED321659876', '514-321-9876', '101 Pine St', 'Longueuil', 'Quebec', 'H4H 4H4', 'emily.brown@myvc.com', 'Assistant Coach', 'Volunteer'),
('David', 'Wilson', '1978-07-20', '654-32-1987', 'MED654321987', '514-654-1987', '202 Maple St', 'Montreal', 'Quebec', 'H5H 5H5', 'david.wilson@myvc.com', 'Other', 'Salaried'),
('Sarah', 'Taylor', '1987-09-12', '789-12-3456', 'MED789123456', '514-789-3456', '303 Cedar St', 'Laval', 'Quebec', 'H6H 6H6', 'sarah.taylor@myvc.com', 'Coach', 'Volunteer'),
('James', 'Anderson', '1983-04-25', '234-56-7891', 'MED234567891', '514-234-7891', '404 Birch St', 'Longueuil', 'Quebec', 'H7H 7H7', 'james.anderson@myvc.com', 'Assistant Coach', 'Salaried'),
('Laura', 'Martinez', '1995-02-18', '567-89-1234', 'MED567891234', '514-567-1234', '505 Spruce St', 'Montreal', 'Quebec', 'H8H 8H8', 'laura.martinez@myvc.com', 'Other', 'Volunteer'),
('Robert', 'Garcia', '1989-06-30', '890-12-3456', 'MED890123456', '514-890-3456', '606 Walnut St', 'Laval', 'Quebec', 'H9H 9H9', 'robert.garcia@myvc.com', 'Captain', 'Salaried'),
('Linda', 'Lee', '1975-12-14', '901-23-4567', 'MED901234567', '514-901-4567', '707 Cherry St', 'Longueuil', 'Quebec', 'H0H 0H0', 'linda.lee@myvc.com', 'General Manager', 'Volunteer');

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

INSERT INTO ClubMembers (FirstName, LastName, DateOfBirth, Height, Weight, SocialSecurityNumber, MedicareCardNumber, PhoneNumber, Address, City, Province, PostalCode, FamilyMemberID, Status)
VALUES
('Liam', 'Brown', '2000-01-15', 180.25, 75.50, '555-55-1111', 'AB1234567891', '555-1111', '123 Elm St', 'Montreal', 'Quebec', 'H1A1A1', 1, 'Active'),
('Emma', 'Johnson', '1998-03-27', 165.50, 65.00, '555-55-2222', 'CD9876543211', '555-2222', '456 Oak St', 'Quebec City', 'Quebec', 'G2B2B2', 2, 'Inactive'),
('Noah', 'Lee', '2002-10-10', 170.80, 70.25, '555-55-3333', 'EF5555555556', '555-3333', '789 Pine St', 'Laval', 'Quebec', 'H7N3C3', 3, 'Active'),
('Olivia', 'Miller', '2001-12-05', 160.75, 55.50, '555-55-4444', 'GH6666666667', '555-4444', '101 Birch St', 'Sherbrooke', 'Quebec', 'J1J4D4', 4, 'Inactive'),
('Lucas', 'Garcia', '1999-06-22', 175.30, 80.00, '555-55-5556', 'IJ7777777778', '555-5555', '202 Cedar St', 'Longueuil', 'Quebec', 'J4J5E5', 5, 'Active'),
('Ava', 'Martinez', '2003-09-18', 158.25, 60.75, '555-55-6666', 'KL8888888889', '555-6666', '303 Walnut St', 'Gatineau', 'Quebec', 'J8J6F6', 6, 'Inactive'),
('Ethan', 'Davis', '1997-04-14', 180.90, 85.50, '555-55-7777', 'MN9999999990', '555-7777', '404 Maple St', 'Trois-Rivières', 'Quebec', 'G9A7G7', 7, 'Active'),
('Sophia', 'Wilson', '2000-01-03', 167.40, 62.25, '555-55-8888', 'OP1111111112', '555-8888', '505 Chestnut St', 'Saguenay', 'Quebec', 'G7H8H8', 8, 'Inactive'),
('Mia', 'Martinez', '2004-05-19', 162.50, 58.00, '555-55-9999', 'QR1234567892', '555-9999', '707 Urban Dr', 'Montreal', 'Quebec', 'H2X3K8', 1, 'Active'),
('Alexander', 'Clark', '2001-11-22', 177.60, 78.50, '555-55-0000', 'ST9876543212', '555-0000', '808 Suburban Ln', 'Saguenay', 'Quebec', 'G7H8H8', 8, 'Inactive');

INSERT INTO Payments (ClubMemberID, PaymentDate, Amount, PaymentMethod, MembershipYear)
VALUES
(1, '2024-01-15', 100.00, 'Credit Card', 2024),
(2, '2024-02-10', 150.00, 'Debit Card', 2023),
(3, '2024-03-05', 200.00, 'Cash', 2024),
(4, '2024-04-20', 120.00, 'Credit Card', 2023),
(5, '2024-05-18', 180.00, 'Debit Card', 2024),
(6, '2024-06-12', 250.00, 'Cash', 2024),
(7, '2024-07-08', 90.00, 'Credit Card', 2022),
(8, '2024-08-23', 130.00, 'Debit Card', 2022),
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
