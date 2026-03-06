

 CREATE TABLE Accounts (
    AccountID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    Balance DECIMAL(10,2)
);

INSERT INTO Accounts (AccountID, CustomerName, Balance) VALUES
(1, 'Ali', 40000),
(2, 'Sara', 65000),
(3, 'Ahmed', 70000),
(4, 'Zain', 30000),
(5, 'Fatima', 55000),
(6, 'Usman', 80000);

-- SELECT * FROM Accounts;

SELECT CustomerName, Balance
FROM Accounts
WHERE Balance > (
    SELECT AVG(Balance)
    FROM Accounts
);

