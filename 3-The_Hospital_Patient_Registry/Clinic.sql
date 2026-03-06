CREATE TABLE Patients (
    PatientID INT PRIMARY KEY,
    Name VARCHAR(50),
    Phone VARCHAR(20),
    Status VARCHAR(20)
);

INSERT INTO Patients (PatientID, Name, Phone, Status) VALUES
(45, 'Ali', '03001234567', 'Admitted'),
(46, 'Ahmed', '03007654321', 'Admitted'),
(47, 'Sara', '03111222333', 'Discharged'),
(48, 'Fatima', '03222333444', 'Admitted');

SELECT * FROM Patients;

UPDATE Patients
SET Status = 'Discharged'
WHERE PatientID = 45 AND Name = 'Ali';

SELECT * FROM Patients;

-- If you write:
-- UPDATE Patients
-- SET Status = 'Discharged';

-- All patients will be discharged, which is dangerous.

-- The WHERE clause acts as a safety filter so only Ali (PatientID 45) is updated.