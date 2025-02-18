
INSERT INTO Locations (Type_T, Name_N, Address, City, Province, PostalCode, PhoneNumbers, WebAddress, MaxCapacity) VALUES
('Head', 'Main Office', '123 Main St', 'Montreal', 'Quebec', 'H1A 2B3', '514-123-4567', 'http://mainoffice.com', 200),
('Branch', 'Branch 1', '456 Elm St', 'Ottawa', 'Ontario', 'K1A 3B4', '613-234-5678', 'http://branch1.com', 150),
('Branch', 'Branch 2', '789 Oak St', 'Vancouver', 'British Columbia', 'V5K 4D5', '604-345-6789', 'http://branch2.com', 120),
('Branch', 'Branch 3', '101 Maple St', 'Gatineau', 'Quebec', 'H4D 5E6', '514-456-7890', 'http://branch3.com', 100),
('Branch', 'Branch 4', '202 Pine St', 'Sherbrooke', 'Quebec', 'H5E 6F7', '514-567-8901', 'http://branch4.com', 80),
('Branch', 'Branch 5', '303 Birch St', 'Saguenay', 'Quebec', 'H6F 7G8', '514-678-9012', 'http://branch5.com', 70),
('Branch', 'Branch 6', '404 Cedar St', 'Toronto', 'Ontario', 'M5G 1Z4', '416-789-0123', 'http://branch6.com', 60),
('Branch', 'Branch 7', '505 Walnut St', 'Halifax', 'Nova Scotia', 'B3J 2X3', '902-890-1234', 'http://branch7.com', 50),
('Branch', 'Branch 8', '606 Cherry St', 'Rimouski', 'Quebec', 'H9I 0J1', '514-901-2345', 'http://branch8.com', 40),
('Branch', 'Branch 9', '707 Willow St', 'Calgary', 'Alberta', 'T2G 1K5', '403-012-3456', 'http://branch9.com', 30);

INSERT INTO Personnel (FirstName, LastName, DateOfBirth, SocialSecurityNumber, MedicareCardNumber, PhoneNumber, Address, City, Province, PostalCode, EmailAddress, Role, Mandate) VALUES
('David', 'Brown', '1982-12-01', '123-45-6789', '123456789012', '514-123-4567', '123 Main St', 'Montreal', 'Quebec', 'H1A 2B3', 'david.brown@example.com', 'General Manager', 'Salaried'),
('Emma', 'White', '1987-05-16', '234-56-7890', '234567890123', '613-234-5678', '456 Elm St', 'Ottawa', 'Ontario', 'K1A 3B4', 'emma.white@example.com', 'Coach', 'Volunteer'),
('John', 'Doe', '1980-01-15', '345-67-8901', '345678901234', '604-345-6789', '789 Oak St', 'Vancouver', 'British Columbia', 'V5K 4D5', 'john.doe@example.com', 'Assistant Coach', 'Salaried'),
('Sophia', 'Clark', '1990-06-10', '456-78-9012', '456789012345', '416-789-0123', '101 Maple St', 'Toronto', 'Ontario', 'M5G 1Z4', 'sophia.clark@example.com', 'General Manager', 'Volunteer'),
('James', 'Davis', '1978-11-14', '567-89-0123', '567890123456', '514-567-8901', '202 Pine St', 'Sherbrooke', 'Quebec', 'H5E 6F7', 'james.davis@example.com', 'Other', 'Salaried'),
('Mia', 'Martinez', '1987-05-16', '678-90-1234', '678901234567', '902-890-1234', '505 Walnut St', 'Halifax', 'Nova Scotia', 'B3J 2X3', 'mia.martinez@example.com', 'General Manager', 'Volunteer'),
('Oliver', 'Wilson', '1983-07-19', '789-01-2345', '789012345678', '403-012-3456', '303 Birch St', 'Calgary', 'Alberta', 'T2G 1K5', 'oliver.wilson@example.com', 'Captain', 'Salaried'),
('Ava', 'Garcia', '1985-08-30', '890-12-3456', '890123456789', '514-678-9012', '606 Cherry St', 'Rimouski', 'Quebec', 'H9I 0J1', 'ava.garcia@example.com', 'Assistant Coach', 'Volunteer'),
('Liam', 'Robinson', '1992-09-03', '901-23-4567', '901234567890', '604-789-0123', '404 Cedar St', 'Vancouver', 'British Columbia', 'V5K 4D5', 'liam.robinson@example.com', 'Other', 'Salaried'),
('Sophia', 'Harris', '1985-01-30', '012-34-5678', '012345678901', '416-890-1234', '707 Willow St', 'Toronto', 'Ontario', 'M5G 1Z4', 'sophia.harris@example.com', 'General Manager', 'Volunteer');

INSERT INTO FamilyMembers (FirstName, LastName, DateOfBirth, SocialSecurityNumber, MedicareCardNumber, PhoneNumber, Address, City, Province, PostalCode, EmailAddress) VALUES
('John', 'Smith', '1980-01-15', '123-45-6789', '123456789012', '514-123-4567', '123 Main St', 'Montreal', 'Quebec', 'H1A 2B3', 'john.smith@example.com'),
('Mary', 'Smith', '1975-03-22', '234-56-7890', '234567890123', '613-234-5678', '456 Elm St', 'Ottawa', 'Ontario', 'K1A 3B4', 'mary.smith@example.com'),
('Robert', 'Johnson', '1990-06-10', '345-67-8901', '345678901234', '604-345-6789', '789 Oak St', 'Vancouver', 'British Columbia', 'V5K 4D5', 'robert.johnson@example.com'),
('Emily', 'Brown', '1982-12-01', '456-78-9012', '456789012345', '416-789-0123', '101 Maple St', 'Toronto', 'Ontario', 'M5G 1Z4', 'emily.brown@example.com'),
('Michael', 'Davis', '1978-11-14', '567-89-0123', '567890123456', '514-567-8901', '202 Pine St', 'Sherbrooke', 'Quebec', 'H5E 6F7', 'michael.davis@example.com'),
('Jessica', 'Martinez', '1987-05-16', '678-90-1234', '678901234567', '902-890-1234', '505 Walnut St', 'Halifax', 'Nova Scotia', 'B3J 2X3', 'jessica.martinez@example.com'),
('David', 'Lee', '1983-07-19', '789-01-2345', '789012345678', '403-012-3456', '303 Birch St', 'Calgary', 'Alberta', 'T2G 1K5', 'david.lee@example.com'),
('Sarah', 'Garcia', '1995-04-25', '890-12-3456', '890123456789', '514-678-9012', '606 Cherry St', 'Rimouski', 'Quebec', 'H9I 0J1', 'sarah.garcia@example.com'),
('Daniel', 'Wilson', '1985-08-30', '901-23-4567', '901234567890', '604-789-0123', '404 Cedar St', 'Vancouver', 'British Columbia', 'V5K 4D5', 'daniel.wilson@example.com'),
('Laura', 'Robinson', '1992-09-03', '012-34-5678', '012345678901', '416-890-1234', '707 Willow St', 'Toronto', 'Ontario', 'M5G 1Z4', 'laura.robinson@example.com');

INSERT INTO ClubMembers (FirstName, LastName, DateOfBirth, Height, Weight, SocialSecurityNumber, MedicareCardNumber, PhoneNumber, Address, City, Province, PostalCode, FamilyMemberID, Status) VALUES
('Alice', 'Smith', '2005-01-15', 170.50, 65.20, '123-45-6780', '123456789013', '514-123-4568', '123 Main St', 'Montreal', 'Quebec', 'H1A 2B4', 1, 'Active'),
('Bob', 'Smith', '2008-03-22', 160.30, 55.10, '234-56-7891', '234567890124', '613-234-5679', '456 Elm St', 'Ottawa', 'Ontario', 'K1A 3B5', 2, 'Active'),
('Chris', 'Johnson', '2012-06-10', 150.40, 45.50, '345-67-8902', '345678901235', '604-345-6790', '789 Oak St', 'Vancouver', 'British Columbia', 'V5K 4D6', 3, 'Inactive'),
('Daniel', 'Brown', '2006-12-01', 180.25, 75.00, '456-78-9013', '456789012346', '416-789-0134', '101 Maple St', 'Toronto', 'Ontario', 'M5G 1Z5', 4, 'Active'),
('Ella', 'Davis', '2007-11-14', 175.30, 70.40, '567-89-0124', '567890123457', '514-567-8902', '202 Pine St', 'Sherbrooke', 'Quebec', 'H5E 6F8', 5, 'Inactive'),
('Fiona', 'Martinez', '2010-05-16', 165.70, 60.90, '678-90-1235', '678901234568', '902-890-1235', '505 Walnut St', 'Halifax', 'Nova Scotia', 'B3J 2X4', 6, 'Active'),
('George', 'Lee', '2009-07-19', 170.60, 65.80, '789-01-2346', '789012345679', '403-012-3457', '303 Birch St', 'Calgary', 'Alberta', 'T2G 1K6', 7, 'Active'),
('Hannah', 'Garcia', '2011-04-25', 168.70, 63.40, '890-12-3457', '890123456790', '514-678-9013', '606 Cherry St', 'Rimouski', 'Quebec', 'H9I 0J2', 8, 'Active'),
('Ian', 'Wilson', '2008-08-30', 155.80, 52.10, '901-23-4568', '901234567891', '604-789-0124', '404 Cedar St', 'Vancouver', 'British Columbia', 'V5K 4D7', 9, 'Inactive'),
('Jane', 'Robinson', '2006-09-03', 160.20, 55.30, '012-34-5679', '012345678902', '416-890-1235', '707 Willow St', 'Toronto', 'Ontario', 'M5G 1Z5', 10, 'Active');

INSERT INTO Payments (ClubMemberID, PaymentDate, Amount, PaymentMethod, MembershipYear) VALUES
(1, '2024-01-15', 150.00, 'Credit Card', 2024),
(2, '2024-01-16', 120.00, 'Debit Card', 2024),
(3, '2024-12-15', 100.00, 'Cash', 2024),
(4, '2024-12-16', 80.00, 'Credit Card', 2024),
(5, '2025-01-19', 75.00, 'Debit Card', 2025),
(6, '2024-12-17', 95.00, 'Cash', 2024),
(7, '2024-01-21', 110.00, 'Credit Card', 2024),
(8, '2024-12-18', 85.00, 'Debit Card', 2024),
(9, '2025-01-23', 65.00, 'Cash', 2025),
(10, '2024-01-24', 90.00, 'Credit Card', 2024);

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

INSERT INTO PersonnelLocations (PersonnelID, LocationID, StartDate, EndDate) VALUES
(1, 1, '2024-01-01', NULL),
(2, 2, '2024-02-01', '2024-11-30'),
(3, 3, '2024-03-01', NULL),
(4, 4, '2024-04-01', '2024-09-30'),
(5, 5, '2024-05-01', '2024-08-31'),
(6, 6, '2024-06-01', NULL),
(7, 7, '2024-07-01', '2024-12-31'),
(8, 8, '2024-08-01', NULL),
(9, 9, '2024-09-01', '2024-10-31'),
(10, 10, '2024-10-01', NULL);

INSERT INTO FamilyMemberClubMember (FamilyMemberID, ClubMemberID, Relationship) VALUES
(1, 1, 'Father'),
(1, 2, 'Father'),
(2, 2, 'Mother'),
(3, 3, 'Grandfather'),
(4, 4, 'Grandmother'),
(5, 5, 'Tutor'),
(6, 6, 'Partner'),
(7, 7, 'Friend'),
(8, 8, 'Other'),
(9, 9, 'Father');

INSERT INTO ClubMemberLocations (ClubMemberID, LocationID, StartDate, EndDate) VALUES
(1, 1, '2024-01-01', NULL),
(2, 1, '2024-02-01', '2024-11-30'),
(3, 2, '2024-03-01', NULL),
(4, 2, '2024-04-01', '2024-09-30'),
(5, 4, '2024-05-01', '2024-08-31'),
(6, 5, '2024-06-01', NULL),
(7, 7, '2024-07-01', '2024-12-31'),
(8, 8, '2024-08-01', NULL),
(9, 9, '2024-09-01', '2024-10-31'),
(10, 10, '2024-10-01', NULL);
