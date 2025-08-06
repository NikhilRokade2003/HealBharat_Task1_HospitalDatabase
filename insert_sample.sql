-- Insert Departments (5 entries)
INSERT INTO Departments (name, location) VALUES 
('Cardiology', 'B1'),
('Neurology', 'B2'),
('Orthopedics', 'B3'),
('Pediatrics', 'B4'),
('Dermatology', 'B5');

-- Insert Doctors (10 entries)
INSERT INTO Doctors (name, specialization, phone, department_id) VALUES 
('Dr. Aditi Mehra', 'Cardiologist', '9999990001', 1),
('Dr. Sameer Rane', 'Cardiologist', '9999990002', 1),
('Dr. Neha Sharma', 'Neurologist', '9999990003', 2),
('Dr. Rajiv Das', 'Neurologist', '9999990004', 2),
('Dr. Karan Verma', 'Orthopedic', '9999990005', 3),
('Dr. Simran Kohli', 'Orthopedic', '9999990006', 3),
('Dr. Riya Patel', 'Pediatrician', '9999990007', 4),
('Dr. Mohit Sinha', 'Pediatrician', '9999990008', 4),
('Dr. Kavya Rao', 'Dermatologist', '9999990009', 5),
('Dr. Arjun Bhat', 'Dermatologist', '9999990010', 5);

-- Insert Patients (10 entries)
INSERT INTO Patients (name, dob, gender, phone, address) VALUES 
('Ananya Desai', '1990-05-12', 'Female', '8888880001', 'Pune'),
('Rohan Kulkarni', '1985-03-22', 'Male', '8888880002', 'Mumbai'),
('Sneha Joshi', '2000-08-14', 'Female', '8888880003', 'Nashik'),
('Amit Trivedi', '1978-01-30', 'Male', '8888880004', 'Nagpur'),
('Kritika Sen', '1995-06-19', 'Female', '8888880005', 'Thane'),
('Manish Rawat', '1989-11-10', 'Male', '8888880006', 'Pimpri'),
('Pooja Shah', '2002-02-05', 'Female', '8888880007', 'Kolhapur'),
('Dev Mehta', '1993-09-17', 'Male', '8888880008', 'Solapur'),
('Ishita Roy', '1991-12-24', 'Female', '8888880009', 'Aurangabad'),
('Aditya Nair', '1987-07-03', 'Male', '8888880010', 'Latur');

-- Insert Appointments (10 entries)
INSERT INTO Appointments (patient_id, doctor_id, appointment_date, status) VALUES 
(1, 1, '2025-08-10 10:30:00', 'Scheduled'),
(2, 2, '2025-08-11 09:00:00', 'Completed'),
(3, 3, '2025-08-12 11:00:00', 'Scheduled'),
(4, 4, '2025-08-08 14:00:00', 'Completed'),
(5, 5, '2025-08-13 15:30:00', 'Scheduled'),
(6, 6, '2025-08-07 13:00:00', 'Completed'),
(7, 7, '2025-08-09 10:00:00', 'Scheduled'),
(8, 8, '2025-08-15 12:30:00', 'Scheduled'),
(9, 9, '2025-08-16 16:00:00', 'Cancelled'),
(10, 10, '2025-08-14 11:45:00', 'Scheduled');

-- Insert Treatments (5 entries)
INSERT INTO Treatments (treatment_name, cost) VALUES 
('ECG Test', 500.00),
('MRI Scan', 2500.00),
('Knee Replacement', 150000.00),
('Vaccination', 1000.00),
('Skin Allergy Test', 800.00);

-- Insert Patient_Treatments (10 entries)
INSERT INTO Patient_Treatments (patient_id, treatment_id, date) VALUES 
(1, 1, '2025-08-10'),
(2, 2, '2025-08-11'),
(3, 2, '2025-08-12'),
(4, 3, '2025-08-08'),
(5, 3, '2025-08-13'),
(6, 4, '2025-08-07'),
(7, 4, '2025-08-09'),
(8, 5, '2025-08-15'),
(9, 5, '2025-08-16'),
(10, 1, '2025-08-14');

-- Insert Billing (10 entries)
INSERT INTO Billing (patient_id, treatment_id, bill_date, amount) VALUES 
(1, 1, '2025-08-10', 500.00),
(2, 2, '2025-08-11', 2500.00),
(3, 2, '2025-08-12', 2500.00),
(4, 3, '2025-08-08', 150000.00),
(5, 3, '2025-08-13', 150000.00),
(6, 4, '2025-08-07', 1000.00),
(7, 4, '2025-08-09', 1000.00),
(8, 5, '2025-08-15', 800.00),
(9, 5, '2025-08-16', 800.00),
(10, 1, '2025-08-14', 500.00);
