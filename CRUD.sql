
SELECT Name, Surname, Specialization
FROM Doctor
WHERE DepartmentId = 'e8a37e48-49f3-4c7b-b9c4-e5d8c57e9b95';


INSERT INTO Patient (Id, Name, Surname, DateOfBirth, Email) VALUES
    ('d8d0f8c5-5d5e-47f2-bf9f-d902dd39a5b1', 'Maja', 'Maksimovic', '1992-08-30', 'maja.maksimovic@patient.com');


UPDATE Patient
SET Email = 'petra.newemail@patient.com'
WHERE Id = 'd1c774db-e4b0-469b-b8b5-6fe858c11e8f';


SELECT Name, Surname, Email
FROM Patient
WHERE Id='d1b774db-e4b0-469b-b8b5-6fe858c11e8f';

DELETE FROM Appointment
WHERE Id = '3f298742-bba5-4f24-ae5b-e9bfbdd2dbf1';


SELECT Nurse.Name AS NurseName, Nurse.Surname AS NurseSurname,
       Patient.Name AS PatientName, Patient.Surname AS PatientSurname
FROM Nurse
JOIN NursePatient ON Nurse.Id = NursePatient.NurseId
JOIN Patient ON NursePatient.PatientId = Patient.Id;


SELECT Patient.Name AS PatientName, Patient.Surname AS PatientSurname,
       Doctor.Name AS DoctorName, Doctor.Surname AS DoctorSurname
FROM Appointment
JOIN Patient ON Appointment.PatientId = Patient.Id
JOIN Doctor ON Appointment.DoctorId = Doctor.Id;


SELECT Name, Surname, Specialization
FROM Doctor
WHERE Specialization = 'Cardiology';


SELECT Therapy
FROM MedicalHistory
WHERE PatientId = 'd1c774db-e4b0-469b-b8b5-6fe858c11e8f';




DELETE FROM Patient
WHERE Id = 'eb3ff41e-bc7c-4a53-b79f-b70c41e5a2b6';


SELECT Appointment.Schedule, Patient.Name AS PatientName, Patient.Surname AS PatientSurname
FROM Appointment
JOIN Doctor ON Appointment.DoctorId = Doctor.Id
JOIN Patient ON Appointment.PatientId = Patient.Id
WHERE Doctor.Name = 'Marko' AND Doctor.Surname = 'Markic';
