CREATE DATABASE Hospital_Management_System;
USE Hospital_Management_System;

CREATE TABLE Patient(
PatientID INT PRIMARY KEY,
FirstName VARCHAR(50) NOT NULL,
LastName VARCHAR(50) NOT NULL,
DateOfBirth DATE,
ContactNumber VARCHAR(20)
);

CREATE TABLE Department(
DepartmentID INT PRIMARY KEY,
DepartmentName VARCHAR(50) NOT NULL,
Location VARCHAR(100),
Phone VARCHAR(20),
HeadDoctorID INT
);

CREATE TABLE Doctor(
DoctorID INT PRIMARY KEY,
FirstName VARCHAR(50) NOT NULL,
LastName VARCHAR(50) NOT NULL,
Specialty VARCHAR(100),
DepartmentID INT,
FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

ALTER TABLE Department
ADD FOREIGN KEY (HeadDoctorID) REFERENCES Doctor(DoctorID)

CREATE TABLE Ward(
WardID INT PRIMARY KEY,
WardName VARCHAR(50) NOT NULL,
Capacity INT,
FloorNumber INT,
DepartmentID INT,
FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

CREATE TABLE Nurse(
NurseID INT PRIMARY KEY,
FirstName VARCHAR(50) NOT NULL,
LastName VARCHAR(50) NOT NULL,
HireDate DATE,
WardID INT,
FOREIGN KEY (WardID) REFERENCES Ward(WardID)
);

CREATE TABLE Appointment(
AppointmentID INT PRIMARY KEY,
PatientID INT,
DoctorID INT,
AppointmentDate DATE,
Status VARCHAR(20),
FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
FOREIGN KEY (DoctorID) REFERENCES Doctor(DoctorID)
);

CREATE TABLE Prescription(
PrescriptionID INT PRIMARY KEY,
PatientID INT,
DoctorID INT,
MedicationName VARCHAR(50) NOT NULL,
Dosage VARCHAR(50),
FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
FOREIGN KEY (DoctorID) REFERENCES Doctor(DoctorID)
);
