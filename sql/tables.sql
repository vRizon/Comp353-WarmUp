
CREATE TABLE Locations (
    LocationID INT AUTO_INCREMENT PRIMARY KEY,
    Type_T ENUM('Head', 'Branch') NOT NULL,
    Name_N VARCHAR(100) NOT NULL,
    Address VARCHAR(255) NOT NULL,
    City VARCHAR(100) NOT NULL,
    Province VARCHAR(100) NOT NULL,
    PostalCode VARCHAR(10) NOT NULL,
    PhoneNumbers VARCHAR(100) NOT NULL,
    WebAddress VARCHAR(255) NOT NULL,
    MaxCapacity INT NOT NULL
);

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
    Role ENUM('General Manager', 'Captain', 'Coach', 'Assistant Coach', 'Other') NOT NULL,
    Mandate ENUM('Volunteer', 'Salaried') NOT NULL
);

CREATE TABLE FamilyMembers (
    FamilyMemberID INT AUTO_INCREMENT PRIMARY KEY,
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
    EmailAddress VARCHAR(100)
);

CREATE TABLE ClubMembers (
    ClubMemberID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    DateOfBirth DATE NOT NULL,
    Height DECIMAL(5,2),
    Weight DECIMAL(5,2),
    SocialSecurityNumber CHAR(11) UNIQUE NOT NULL,
    MedicareCardNumber CHAR(12) UNIQUE NOT NULL,
    PhoneNumber VARCHAR(15),
    Address VARCHAR(255),
    City VARCHAR(100),
    Province VARCHAR(100),
    PostalCode VARCHAR(10),
    FamilyMemberID INT NOT NULL,
    Status ENUM ('Active', 'Inactive') NOT NULL,
    FOREIGN KEY (FamilyMemberID) REFERENCES FamilyMembers(FamilyMemberID)
);

CREATE TABLE Payments (
    PaymentID INT AUTO_INCREMENT PRIMARY KEY,
    ClubMemberID INT,
    PaymentDate DATE NOT NULL,
    Amount DECIMAL(10,2) NOT NULL,
    PaymentMethod ENUM('Cash', 'Debit Card', 'Credit Card') NOT NULL,
    MembershipYear YEAR NOT NULL,
    FOREIGN KEY (ClubMemberID) REFERENCES ClubMembers(ClubMemberID)
);

CREATE TABLE PersonnelLocations (
    PersonnelID INT NOT NULL,
    LocationID INT NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE,
    PRIMARY KEY (PersonnelID, LocationID, StartDate),
    FOREIGN KEY (PersonnelID) REFERENCES Personnel(PersonnelID),
    FOREIGN KEY (LocationID) REFERENCES Locations(LocationID)
);

CREATE TABLE FamilyMemberClubMember (
    FamilyMemberID INT NOT NULL,
    ClubMemberID INT NOT NULL,
    Relationship ENUM('Father', 'Mother', 'Grandfather', 'Grandmother', 'Tutor', 'Partner', 'Friend', 'Other') NOT NULL,
    PRIMARY KEY (FamilyMemberID, ClubMemberID),
    FOREIGN KEY (FamilyMemberID) REFERENCES FamilyMembers(FamilyMemberID),
    FOREIGN KEY (ClubMemberID) REFERENCES ClubMembers(ClubMemberID)
);

CREATE TABLE ClubMemberLocations (
    ClubMemberID INT NOT NULL,
    LocationID INT NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE,
    PRIMARY KEY (ClubMemberID, LocationID, StartDate),
    FOREIGN KEY (ClubMemberID) REFERENCES ClubMembers(ClubMemberID),
    FOREIGN KEY (LocationID) REFERENCES Locations(LocationID)
);