


CREATE TABLE Hospital (
    Id UUID PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Address VARCHAR(255) NOT NULL
);


CREATE TABLE Department (
    Id UUID PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    HospitalId UUID NOT NULL,
    FOREIGN KEY (HospitalId) REFERENCES Hospital(Id)
);


CREATE TABLE Nurse (
    Id UUID PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Surname VARCHAR(255) NOT NULL,
    DepartmentId UUID NOT NULL,
    FOREIGN KEY (DepartmentId) REFERENCES Department(Id)
);


CREATE TABLE Doctor (
    Id UUID PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Surname VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL UNIQUE,
    Specialization VARCHAR(255),
    DepartmentId UUID NOT NULL,
    FOREIGN KEY (DepartmentId) REFERENCES Department(Id)
);


CREATE TABLE Patient (
    Id UUID PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Surname VARCHAR(255) NOT NULL,
    DateOfBirth DATE NOT NULL,
    Email VARCHAR(255) NOT NULL UNIQUE
);


CREATE TABLE NursePatient (
    NurseId UUID NOT NULL,
    PatientId UUID NOT NULL,
    PRIMARY KEY (NurseId, PatientId),
    FOREIGN KEY (NurseId) REFERENCES Nurse(Id),
    FOREIGN KEY (PatientId) REFERENCES Patient(Id)
);


CREATE TABLE Appointment (
    Id UUID PRIMARY KEY,
    Schedule TIMESTAMP NOT NULL,
    PatientId UUID NOT NULL,
    DoctorId UUID NOT NULL,
    FOREIGN KEY (PatientId) REFERENCES Patient(Id),
    FOREIGN KEY (DoctorId) REFERENCES Doctor(Id)
);


CREATE TABLE MedicalHistory (
    Id UUID PRIMARY KEY,
    Therapy VARCHAR(255) NOT NULL,
    PatientId UUID NOT NULL,
    FOREIGN KEY (PatientId) REFERENCES Patient(Id)
);



