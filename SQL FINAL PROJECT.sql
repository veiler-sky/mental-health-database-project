Create database mental_health;
CREATE TABLE Patients (
    patient_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    contact VARCHAR(100)
);
CREATE TABLE Therapists (
    therapist_id INT PRIMARY KEY,
    name VARCHAR(100),
    specialization VARCHAR(100),
    
);

    contact VARCHAR(100)
);

CREATE TABLE Sessions (
    session_id INT PRIMARY KEY,
    patient_id INT,
    therapist_id INT,
    date DATE,
    notes TEXT,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (therapist_id) REFERENCES Therapists(therapist_id)
);

CREATE TABLE Diagnoses (
    diagnosis_id INT PRIMARY KEY,
    patient_id INT,
    diagnosis VARCHAR(200),
    date DATE,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
);

CREATE TABLE Treatments (
    treatment_id INT PRIMARY KEY,
    diagnosis_id INT,
    treatment_type VARCHAR(100),
    description TEXT,
    FOREIGN KEY (diagnosis_id) REFERENCES Diagnoses(diagnosis_id)
);
