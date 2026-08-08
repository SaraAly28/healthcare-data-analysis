-- ============================================
-- Endometriosis SQL Analysis
-- Author: Sara Aly
-- ============================================

-- 1. View the dataset
SELECT *
FROM structured_endometriosis_data;

-- 2. Count total patients
SELECT COUNT(*) AS total_patients
FROM structured_endometriosis_data;

-- ============================================
-- Endometriosis SQL Analysis
-- Author: Sara Aly
-- ============================================

-- 1. View the dataset
SELECT *
FROM structured_endometriosis_data;

-- 2. Count total patients
SELECT COUNT(*) AS total_patients
FROM structured_endometriosis_data;

-- 3. Average patient age
SELECT AVG(Age) AS average_age
FROM structured_endometriosis_data;

-- 4. Number of diagnosed patients
SELECT Diagnosis,
COUNT(*) AS patients
FROM structured_endometriosis_data
GROUP BY Diagnosis;

-- 5. Average BMI by diagnosis
SELECT Diagnosis,
AVG(BMI) AS average_BMI
FROM structured_endometriosis_data
GROUP BY Diagnosis;

-- 6. Patients with infertility
SELECT COUNT(*) AS infertility_cases
FROM structured_endometriosis_data
WHERE Infertility = 1;

-- 7. Average chronic pain by diagnosis
SELECT Diagnosis,
AVG(Chronic_Pain_Level) AS avg_pain
FROM structured_endometriosis_data
GROUP BY Diagnosis;

-- 8. Patients older than 35
SELECT *
FROM structured_endometriosis_data
WHERE Age > 35;

-- 9. Top 10 highest BMI
SELECT Age, BMI, Diagnosis
FROM structured_endometriosis_data
ORDER BY BMI DESC
LIMIT 10;

-- 10. Average hormone level
SELECT AVG(Hormone_Level_A) AS average_hormone
FROM structured_endometriosis_data;
