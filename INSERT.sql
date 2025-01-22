
INSERT INTO Hospital (Id, Name, Address) VALUES
    ('e49d3cb8-dc9c-4d3a-920f-576c31c8b4b4', 'General Hospital', '123 Main St, City'),
    ('72c37a50-ff9d-40b7-a58f-93041bb7ec92', 'City Medical Center', '456 Oak Ave, City');


INSERT INTO Department (Id, Name, HospitalId) VALUES
    ('e8a37e48-49f3-4c7b-b9c4-e5d8c57e9b95', 'Cardiology', 'e49d3cb8-dc9c-4d3a-920f-576c31c8b4b4'),
    ('7d8ff0f1-31b2-4b6a-9494-b01777d060d2', 'Neurology', '72c37a50-ff9d-40b7-a58f-93041bb7ec92');

INSERT INTO Nurse (Id, Name, Surname, DepartmentId) VALUES
    ('f3e5c6c8-8268-4c1a-8f02-134cbbd75c1f', 'Lucija', 'Lucijanovic', 'e8a37e48-49f3-4c7b-b9c4-e5d8c57e9b95'),
    ('c8bb0155-9a3a-4977-9484-91e937d9d319', 'Ana', 'Antic', '7d8ff0f1-31b2-4b6a-9494-b01777d060d2');


INSERT INTO Doctor (Id, Name, Surname, Email, Specialization, DepartmentId) VALUES
    ('c4bb2857-b8fd-4289-98cf-c91f56f49a50', 'Marko', 'Markic', 'marko.markic@hospital.com', 'Cardiology', 'e8a37e48-49f3-4c7b-b9c4-e5d8c57e9b95'),
    ('b8a27327-1c5a-4bb7-aed7-cc7368f7f913', 'Ivan', 'Ivankovic', 'ivan.ivankovic@hospital.com', 'Neurology', '7d8ff0f1-31b2-4b6a-9494-b01777d060d2');


INSERT INTO Patient (Id, Name, Surname, DateOfBirth, Email) VALUES
    ('d1c774db-e4b0-469b-b8b5-6fe858c11e8f', 'Petra', 'Petrovic', '1990-05-15', 'petra.petrovic@patient.com'),
    ('eb3ff41e-bc7c-4a53-b79f-b70c41e5a2b6', 'Luka', 'Lukic', '1985-02-20', 'luka.lukic@patient.com');


INSERT INTO Patient (Id, Name, Surname, DateOfBirth, Email) VALUES
    ('d1b774db-e4b0-469b-b8b5-6fe858c11e8f', 'Leon', 'Koružnjak', '2000-12-15', 'leon.koruznjakic@patient.com');
    



INSERT INTO NursePatient (NurseId, PatientId) VALUES
    ('f3e5c6c8-8268-4c1a-8f02-134cbbd75c1f', 'd1c774db-e4b0-469b-b8b5-6fe858c11e8f'),
    ('c8bb0155-9a3a-4977-9484-91e937d9d319', 'eb3ff41e-bc7c-4a53-b79f-b70c41e5a2b6');


INSERT INTO Appointment (Id, Schedule, PatientId, DoctorId) VALUES
    ('1e964f62-d495-4f91-bfd7-b51b2925d44d', '2025-01-23 10:00:00', 'd1c774db-e4b0-469b-b8b5-6fe858c11e8f', 'c4bb2857-b8fd-4289-98cf-c91f56f49a50'),
    ('3f298742-bba5-4f24-ae5b-e9bfbdd2dbf1', '2025-01-24 14:30:00', 'eb3ff41e-bc7c-4a53-b79f-b70c41e5a2b6', 'b8a27327-1c5a-4bb7-aed7-cc7368f7f913');


INSERT INTO MedicalHistory (Id, Therapy, PatientId) VALUES
    ('cd4a823e-3a2e-4318-b438-23dba472a65c', 'Physical Therapy', 'd1c774db-e4b0-469b-b8b5-6fe858c11e8f'),
    ('a6a7b344-ff7e-4cd6-b477-d64d4fe97cc3', 'Medication', 'eb3ff41e-bc7c-4a53-b79f-b70c41e5a2b6');
