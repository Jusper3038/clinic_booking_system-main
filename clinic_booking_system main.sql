
-- Create and use the database
CREATE DATABASE IF NOT EXISTS ClinicDB;
USE ClinicDB;

-- Table: Patients
CREATE TABLE IF NOT EXISTS Patients (
    patient_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    gender ENUM('Male', 'Female', 'Other') NOT NULL,
    date_of_birth DATE NOT NULL,
    phone VARCHAR(15) UNIQUE,
    email VARCHAR(100) UNIQUE
);

-- Table: Doctors
CREATE TABLE IF NOT EXISTS Doctors (
    doctor_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    specialization VARCHAR(100) NOT NULL,
    phone VARCHAR(15) UNIQUE,
    email VARCHAR(100) UNIQUE
);

-- Table: Appointments
CREATE TABLE IF NOT EXISTS Appointments (
    appointment_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT NOT NULL,
    doctor_id INT NOT NULL,
    appointment_date DATETIME NOT NULL,
    status ENUM('Scheduled', 'Completed', 'Cancelled') DEFAULT 'Scheduled',
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);

-- Table: Treatments
CREATE TABLE IF NOT EXISTS Treatments (
    treatment_id INT AUTO_INCREMENT PRIMARY KEY,
    appointment_id INT NOT NULL,
    diagnosis TEXT NOT NULL,
    prescription TEXT,
    FOREIGN KEY (appointment_id) REFERENCES Appointments(appointment_id)
);

-- Table: Payments
CREATE TABLE IF NOT EXISTS Payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    appointment_id INT NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    payment_date DATE NOT NULL,
    payment_method ENUM('Cash', 'Card', 'Mobile') NOT NULL,
    FOREIGN KEY (appointment_id) REFERENCES Appointments(appointment_id)
);

-- Insert sample data into Patients
INSERT INTO Patients (full_name, gender, date_of_birth, phone, email) 
VALUES 
  ('Enock Mburu', 'Male', '1990-01-15', '0712345678', 'enock.mburu@gmail.com'),
  ('Mercy Munyao', 'Female', '1985-07-23', '0723456789', 'mercy.munyao@gmail.com'),
  ('Emily Johnson', 'Female', '2000-03-30', '0734567890', 'emily.johnson@gmail.com');


-- Insert sample data into Doctors
INSERT INTO Doctors (full_name, specialization, phone, email) VALUES
('Dr. Alice Morgan', 'Cardiologist', '0798765432', 'alice.morgan@gmail.com'),
('Dr. Brian Lee', 'Dermatologist', '0787654321', 'brian.lee@gmail.com');

-- Insert sample data into Appointments
INSERT INTO Appointments (patient_id, doctor_id, appointment_date, status) VALUES
(1, 1, '2025-05-01 10:00:00', 'Completed'),
(2, 2, '2025-05-03 14:30:00', 'Scheduled'),
(3, 1, '2025-05-05 09:00:00', 'Cancelled');

-- Insert sample data into Treatments
INSERT INTO Treatments (appointment_id, diagnosis, prescription) VALUES
(1, 'Hypertension', 'Amlodipine 5mg daily');

-- Insert sample data into Payments
INSERT INTO Payments (appointment_id, amount, payment_date, payment_method) VALUES
(1, 1500.00, '2025-05-01', 'Card');
