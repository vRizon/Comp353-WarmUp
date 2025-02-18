-- i)

SELECT
    l.Address,
    l.City,
    l.Province,
    l.PostalCode,
    l.PhoneNumbers,
    l.WebAddress,
    l.Type_T AS Type,
    l.MaxCapacity AS Capacity,
    (SELECT CONCAT(p.FirstName, ' ', p.LastName) 
     FROM Personnel p 
     JOIN PersonnelLocations pl ON p.PersonnelID = pl.PersonnelID
     WHERE pl.LocationID = l.LocationID AND p.Role = 'General Manager' LIMIT 1) AS GeneralManagerName,
    (SELECT COUNT(*)
     FROM PersonnelLocations pl
     WHERE pl.LocationID = l.LocationID) AS NumberOfPersonnel,
    (SELECT COUNT(*)
     FROM ClubMemberLocations cml
     WHERE cml.LocationID = l.LocationID) AS NumberOfClubMembers
FROM
    Locations l
ORDER BY
    l.Province ASC, l.City ASC;
    
-- ii)

SELECT
    fm.FirstName,
    fm.LastName,
    COUNT(cm.ClubMemberID) AS NumberOfActiveClubMembers
FROM
    FamilyMembers fm
JOIN
    FamilyMemberClubMember fmc ON fm.FamilyMemberID = fmc.FamilyMemberID
JOIN
    ClubMembers cm ON fmc.ClubMemberID = cm.ClubMemberID
JOIN
    ClubMemberLocations cml ON cm.ClubMemberID = cml.ClubMemberID
WHERE
    cml.LocationID = 1 AND
    cm.Status = 'Active' AND
    (cml.EndDate IS NULL OR cml.EndDate >= CURDATE())
GROUP BY
    fm.FamilyMemberID
ORDER BY
    fm.FirstName, fm.LastName;

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
    PersonnelLocations pl ON p.PersonnelID = pl.PersonnelID
WHERE
    pl.LocationID = 1 AND
    (pl.EndDate IS NULL OR pl.EndDate >= CURDATE())
ORDER BY
    p.LastName, p.FirstName;


-- iv)

SELECT
    (SELECT l.Name_N FROM Locations l WHERE l.LocationID = cml.LocationID) AS LocationName,
    cm.ClubMemberID AS MembershipNumber,
    cm.FirstName,
    cm.LastName,
    FLOOR(DATEDIFF(CURDATE(), cm.DateOfBirth) / 365.25) AS Age,
    (SELECT l.City FROM Locations l WHERE l.LocationID = cml.LocationID) AS City,
    (SELECT l.Province FROM Locations l WHERE l.LocationID = cml.LocationID) AS Province,
    cm.Status
FROM
    ClubMembers cm
JOIN
    ClubMemberLocations cml ON cm.ClubMemberID = cml.ClubMemberID
WHERE
    (cml.EndDate IS NULL OR cml.EndDate >= CURDATE())
ORDER BY
    LocationName ASC, Age ASC;
    
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
    cm.Status
FROM
    ClubMembers cm
LEFT JOIN
    FamilyMemberClubMember fmc ON cm.ClubMemberID = fmc.ClubMemberID
LEFT JOIN
    FamilyMembers fm ON fmc.FamilyMemberID = fm.FamilyMemberID
WHERE
    fm.FamilyMemberID = 1
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
    FamilyMemberClubMember fmcm ON fm.FamilyMemberID = fmcm.FamilyMemberID
JOIN
    ClubMembers cm ON fmcm.ClubMemberID = cm.ClubMemberID
JOIN
    ClubMemberLocations cml ON cm.ClubMemberID = cml.ClubMemberID
WHERE
    cm.Status = 'Active' AND
    cml.LocationID = 8 AND
    EXISTS (
        SELECT 1
        FROM PersonnelLocations pl
        WHERE
            fm.FamilyMemberID = pl.PersonnelID AND
            cml.LocationID = pl.LocationID
    );

-- vii)

SELECT
    p.PaymentDate,
    p.Amount,
    YEAR(p.PaymentDate) AS YearOfPayment
FROM
    Payments p
WHERE
    p.ClubMemberID in (5,6,7,8)
ORDER BY
    p.PaymentDate ASC;
    
-- viii)

SELECT
    SUM(p.MembershipFee) AS TotalMembershipFeesPaid,
    SUM(p.Donation) AS TotalDonations
FROM (
    SELECT
        Amount,
        CASE
            WHEN Amount <= 100 THEN Amount
            ELSE 100
        END AS MembershipFee,
        CASE
            WHEN Amount > 100 THEN Amount - 100
            ELSE 0
        END AS Donation
    FROM
        Payments
    WHERE
        MembershipYear = 2024
) p;

