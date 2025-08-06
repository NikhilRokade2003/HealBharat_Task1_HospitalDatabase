# 1. Fetching Patient History
SELECT 
    p.patient_id,
    p.name AS patient_name,
    a.appointment_date,
    a.status,
    d.name AS doctor_name,
    d.specialization,
    t.treatment_name,
    pt.date AS treatment_date
FROM Patients p
LEFT JOIN Appointments a ON p.patient_id = a.patient_id
LEFT JOIN Doctors d ON a.doctor_id = d.doctor_id
LEFT JOIN Patient_Treatments pt ON p.patient_id = pt.patient_id
LEFT JOIN Treatments t ON pt.treatment_id = t.treatment_id
ORDER BY p.patient_id, a.appointment_date;




# 2. Upcoming Appointments for a Doctor
SELECT 
    d.name AS doctor_name,
    a.appointment_id,
    p.name AS patient_name,
    a.appointment_date,
    a.status
FROM Appointments a
JOIN Doctors d ON a.doctor_id = d.doctor_id
JOIN Patients p ON a.patient_id = p.patient_id
WHERE a.status = 'Scheduled'
  AND a.appointment_date > NOW()
  AND d.doctor_id = 1  -- Replace with actual doctor_id
ORDER BY a.appointment_date ASC;






# 3. Total Revenue by Department
SELECT 
    dept.name AS department_name,
    SUM(b.amount) AS total_revenue
FROM Billing b
JOIN Patients p ON b.patient_id = p.patient_id
JOIN Treatments t ON b.treatment_id = t.treatment_id
JOIN Patient_Treatments pt ON p.patient_id = pt.patient_id AND t.treatment_id = pt.treatment_id
JOIN Appointments a ON p.patient_id = a.patient_id
JOIN Doctors d ON a.doctor_id = d.doctor_id
JOIN Departments dept ON d.department_id = dept.department_id
GROUP BY dept.department_id, dept.name
ORDER BY total_revenue DESC;



