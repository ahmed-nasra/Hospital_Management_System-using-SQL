INSERT INTO Patient (PatientID, FirstName, LastName, DateOfBirth, ContactNumber)
VALUES
    (1, 'John', 'Doe', '1985-03-15', '555-0101'),
    (2, 'Jane', 'Smith', '1990-07-22', '555-0102'),
    (3, 'Alice', 'Johnson', '1978-11-30', '555-0103'),
    (4, 'Bob', 'Williams', '2000-05-10', '555-0104');

INSERT INTO Department (DepartmentID, DepartmentName, Location, Phone, HeadDoctorID)
VALUES
    (1, 'Cardiology', 'Building A, Floor 2', '555-1001', NULL),
    (2, 'Neurology', 'Building B, Floor 1', '555-1002', NULL),
    (3, 'Orthopedics', 'Building A, Floor 3', '555-1003', NULL);

INSERT INTO Doctor (DoctorID, FirstName, LastName, Specialty, DepartmentID)
VALUES
    (1, 'Emily', 'Brown', 'Cardiologist', 1),
    (2, 'Michael', 'Davis', 'Neurologist', 2),
    (3, 'Sarah', 'Wilson', 'Orthopedist', 3),
    (4, 'David', 'Taylor', 'Cardiologist', 1);

UPDATE Department
SET HeadDoctorID = 1
WHERE DepartmentID = 1;

UPDATE Department
SET HeadDoctorID = 2
WHERE DepartmentID = 2;

UPDATE Department
SET HeadDoctorID = 3
WHERE DepartmentID = 3;

INSERT INTO Ward (WardID, WardName, Capacity, FloorNumber, DepartmentID)
VALUES
    (1, 'Cardiac Ward', 20, 2, 1),
    (2, 'Neuro Ward', 15, 1, 2),
    (3, 'Ortho Ward', 25, 3, 3),
    (4, 'General Ward', 30, 2, 1);

INSERT INTO Nurse (NurseID, FirstName, LastName, HireDate, WardID)
VALUES
    (1, 'Lisa', 'Martinez', '2020-06-15', 1),
    (2, 'Tom', 'Garcia', '2019-03-10', 2),
    (3, 'Anna', 'Lee', '2021-01-20', 3),
    (4, 'Rachel', 'Clark', '2022-08-05', 1);

INSERT INTO Appointment (AppointmentID, PatientID, DoctorID, AppointmentDate, Status)
VALUES
    (1, 1, 1, '2025-05-12 10:00:00', 'Scheduled'),
    (2, 2, 2, '2025-05-13 14:30:00', 'Completed'),
    (3, 3, 3, '2025-05-14 09:00:00', 'Scheduled'),
    (4, 4, 1, '2025-05-15 11:00:00', 'Cancelled');

INSERT INTO Prescription (PrescriptionID, PatientID, DoctorID, MedicationName, Dosage)
VALUES
    (1, 1, 1, 'Aspirin', '100mg daily'),
    (2, 2, 2, 'Gabapentin', '300mg twice daily'),
    (3, 3, 3, 'Ibuprofen', '400mg as needed'),
    (4, 1, 1, 'Lisinopril', '10mg daily');
