
-- i)

SELECT 
    L.Address,
    L.City,
    L.Province,
    L.PostalCode,
    L.PhoneNumbers,
    L.WebAddress,
    L.Type_T AS Type,
    L.MaxCapacity AS Capacity,
    (SELECT CONCAT(FirstName, ' ', LastName) 
     FROM Personnel 
     WHERE LocationID = L.LocationID AND Role = 'General Manager'
     LIMIT 1
    ) AS GeneralManagerName,
    (SELECT COUNT(*) 
     FROM Personnel 
     WHERE LocationID = L.LocationID
    ) AS NumberOfPersonnel,
    (SELECT COUNT(*) 
     FROM ClubMembers CM 
     INNER JOIN ClubMemberLocations CL ON CM.ClubMemberID = CL.ClubMemberID 
     WHERE CL.LocationID = L.LocationID
    ) AS NumberOfClubMembers
FROM 
    Locations L
ORDER BY 
    L.Province ASC, 
    L.City ASC;

-- ii)

SELECT 
    FM.FirstName,
    FM.LastName,
    COUNT(CM.ClubMemberID) AS NumberOfActiveClubMembers
FROM 
    FamilyMembers FM
LEFT JOIN 
    ClubMembers CM ON FM.FamilyMemberID = CM.FamilyMemberID
LEFT JOIN 
    ClubMemberLocations CML ON CM.ClubMemberID = CML.ClubMemberID
WHERE 
    CML.LocationID = 1
    AND CM.Status = 'Active'
GROUP BY 
    FM.FamilyMemberID, FM.FirstName, FM.LastName
ORDER BY 
    FM.LastName ASC, FM.FirstName ASC;


-- iii)

SELECT 
    p.FirstName,
    p.LastName,
    p.DateOfBirth,
    p.SocialSecurityNumber,
    p.MedicareCardNumber,
    p.PhoneNumber,
    p.Address,
    p.City,
    p.Province,
    p.PostalCode,
    p.EmailAddress,
    p.Role,
    p.Mandate
FROM 
    Personnel p
JOIN 
    PersonnelLocations pl ON p.PersonnelID = pl.PersonnelID;

-- iv)

SELECT 
    (SELECT l.Name_N 
     FROM Locations l
     JOIN ClubMemberLocations cml ON l.LocationID = cml.LocationID
     WHERE cml.ClubMemberID = cm.ClubMemberID
     LIMIT 1) AS LocationName,
    cm.ClubMemberID AS MembershipNumber,
    cm.FirstName,
    cm.LastName,
    TIMESTAMPDIFF(YEAR, cm.DateOfBirth, CURDATE()) AS Age,
    cm.City,
    cm.Province,
    (CASE 
        WHEN EXISTS (
            SELECT 1 
            FROM ClubMemberLocations cml 
            WHERE cml.ClubMemberID = cm.ClubMemberID
        ) THEN 'Active'
        ELSE 'Inactive'
    END) AS Status
FROM 
    ClubMembers cm
ORDER BY 
    LocationName ASC,
    Age ASC;

-- v)

SELECT 
    cm.ClubMemberID AS MembershipNumber,
    cm.FirstName,
    cm.LastName,
    cm.DateOfBirth,
    cm.SocialSecurityNumber,
    cm.MedicareCardNumber,
    cm.PhoneNumber,
    cm.Address,
    cm.City,
    cm.Province,
    cm.PostalCode,
    fmc.Relationship,
    (CASE 
        WHEN EXISTS (
            SELECT 1 
            FROM ClubMemberLocations cml 
            WHERE cml.ClubMemberID = cm.ClubMemberID
        ) THEN 'Active'
        ELSE 'Inactive'
    END) AS Status
FROM 
    ClubMembers cm
JOIN 
    FamilyMemberClubMember fmc ON cm.ClubMemberID = fmc.ClubMemberID
ORDER BY 
    cm.FirstName, cm.LastName;

-- vi)

SELECT DISTINCT
    fm.FirstName,
    fm.LastName,
    fm.PhoneNumber
FROM
    FamilyMembers fm
JOIN
    FamilyMemberClubMember fmc ON fm.FamilyMemberID = fmc.FamilyMemberID
JOIN
    ClubMembers cm ON fmc.ClubMemberID = cm.ClubMemberID
JOIN
    ClubMemberLocations cml ON cm.ClubMemberID = cml.ClubMemberID
JOIN
    Personnel p ON fm.FamilyMemberID = p.PersonnelID
JOIN
    PersonnelLocations pl ON p.PersonnelID = pl.PersonnelID
WHERE
    cml.LocationID = pl.LocationID
    AND p.LocationID = cml.LocationID
    AND cm.ClubMemberID IS NOT NULL
    AND p.Role IN ('Administrator', 'Captain', 'Coach', 'Assistant Coach', 'Other')
    AND p.Mandate IN ('Volunteer', 'Salaried');

-- vii)

SELECT 
    PaymentDate,
    Amount,
    YEAR(PaymentDate) AS YearOfPayment
FROM 
    Payments
WHERE 
    ClubMemberID = 2
ORDER BY 
    PaymentDate ASC;

-- viii)

SELECT
    SUM(
        CASE
            WHEN TotalPayments <= 100 THEN TotalPayments
            ELSE 100
        END
    ) AS TotalMembershipFees,
    SUM(
        CASE
            WHEN TotalPayments > 100 THEN TotalPayments - 100
            ELSE 0
        END
    ) AS TotalDonations
FROM (
    SELECT
        ClubMemberID,
        SUM(Amount) AS TotalPayments
    FROM Payments
    WHERE MembershipYear = 2024
    GROUP BY ClubMemberID
) AS MemberPayments;

