CREATE TABLE Personnel (
    PersonnelID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    DateOfBirth DATE NOT NULL,
    SocialSecurityNumber CHAR(11) UNIQUE NOT NULL,
    MedicareCardNumber CHAR(12) UNIQUE NOT NULL,
    PhoneNumber VARCHAR(15),
    Address VARCHAR(255),
    City VARCHAR(100),
    Province VARCHAR(100),
    PostalCode VARCHAR(10),
    EmailAddress VARCHAR(100),
    Role ENUM('Administrator', 'Captain', 'Coach', 'Assistant Coach', 'Other') NOT NULL,
    Mandate ENUM('Volunteer', 'Salaried') NOT NULL,
    LocationID INT,
    StartDate DATE,
    EndDate DATE,
    FOREIGN KEY (LocationID) REFERENCES Locations(LocationID)
);

INSERT INTO Personnel (FirstName, LastName, DateOfBirth, SocialSecurityNumber, MedicareCardNumber, PhoneNumber, Address, City, Province, PostalCode, EmailAddress, Role, Mandate, LocationID, StartDate, EndDate)
VALUES
('John', 'Doe', '1985-05-12', '123-45-6789', 'AB1234567890', '555-1001', '101 Main St', 'Montreal', 'Quebec', 'H1A1A1', 'john.doe@example.com', 'Administrator', 'Salaried', 1, '2020-01-15', NULL),
('Jane', 'Smith', '1990-11-23', '987-65-4321', 'CD9876543210', '555-2002', '202 Center St', 'Quebec City', 'Quebec', 'G2B2B2', 'jane.smith@example.com', 'Captain', 'Volunteer', 2, '2019-09-01', '2023-09-01'),
('Alice', 'Johnson', '1975-03-04', '555-55-5555', 'EF5555555555', '555-3003', '303 North Rd', 'Laval', 'Quebec', 'H7N3C3', 'alice.johnson@example.com', 'Coach', 'Salaried', 3, '2018-06-20', NULL),
('Bob', 'Williams', '1980-07-15', '666-66-6666', 'GH6666666666', '555-4004', '404 East Ave', 'Sherbrooke', 'Quebec', 'J1J4D4', 'bob.williams@example.com', 'Assistant Coach', 'Volunteer', 4, '2021-03-10', '2022-12-31'),
('Carol', 'Brown', '1992-09-29', '777-77-7777', 'IJ7777777777', '555-5005', '505 South St', 'Longueuil', 'Quebec', 'J4J5E5', 'carol.brown@example.com', 'Other', 'Salaried', 5, '2022-05-14', NULL),
('David', 'Miller', '1988-12-17', '888-88-8888', 'KL8888888888', '555-6006', '606 West Blvd', 'Gatineau', 'Quebec', 'J8J6F6', 'david.miller@example.com', 'Administrator', 'Volunteer', 6, '2020-02-25', '2024-02-25'),
('Eve', 'Wilson', '1978-02-22', '999-99-9999', 'MN9999999999', '555-7007', '707 Center Pkwy', 'Trois-Rivières', 'Quebec', 'G9A7G7', 'eve.wilson@example.com', 'Captain', 'Salaried', 7, '2019-10-05', NULL),
('Frank', 'Garcia', '1995-01-18', '111-11-1111', 'OP1111111111', '555-8008', '808 Suburban Ln', 'Saguenay', 'Quebec', 'G7H8H8', 'frank.garcia@example.com', 'Coach', 'Volunteer', 8, '2021-07-21', NULL);
