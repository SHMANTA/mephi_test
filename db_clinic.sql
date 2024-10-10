INSERT INTO appointment (ID_Pacient, ID_Doctor, date_of_appointment, purpose_of_appointment)
VALUES (
    (SELECT ID_Pacient FROM patient WHERE ФИО = 'Иванов Владимир Иванович'),
    (SELECT ID_Doctor FROM doctor WHERE ФИО = 'Петров Константин Константинович'),
    '2024-10-10',  
    'Первичный осмотр'
);

UPDATE patient
SET date_of_appointment = '2024-10-15'
WHERE ФИО = 'Иванов Владимир Иванович';

SELECT patient.name, appointment.purpose_of_appointment, doctor.name AS Doctorr
FROM patient
JOIN date_of_appointment ON patient.ID_Pacient = appointment.ID_Pacient
JOIN doctor ON appointment.ID_Doctor = doctor.ID_Doctor
WHERE appointment.date_of_appointment = CURDATE();