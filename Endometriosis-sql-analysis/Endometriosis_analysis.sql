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

-- 11. Young diagnosed patients
SELECT Age, BMI, Diagnosis
FROM structured_endometriosis_data
WHERE Age < 30
AND Diagnosis = 1;

-- 12. Patients with BMI above average
SELECT Age, BMI, Diagnosis
FROM structured_endometriosis_data
WHERE BMI >
(
    SELECT AVG(BMI)
    FROM structured_endometriosis_data
);

-- 13. BMI category
SELECT
    Age,
    BMI,
    CASE
        WHEN BMI < 18.5 THEN 'Underweight'
        WHEN BMI < 25 THEN 'Normal'
        WHEN BMI < 30 THEN 'Overweight'
        ELSE 'Obese'
    END AS BMI_Category
FROM structured_endometriosis_data;

-- 14. Average BMI by infertility status
SELECT
    Infertility,
    AVG(BMI) AS average_BMI
FROM structured_endometriosis_data
GROUP BY Infertility;

-- 15. Oldest patient
SELECT *
FROM structured_endometriosis_data
ORDER BY Age DESC
LIMIT 1;

-- 16. Youngest patient
SELECT *
FROM structured_endometriosis_data
ORDER BY Age ASC
LIMIT 1;

-- 17. Minimum and maximum BMI
SELECT
    MIN(BMI) AS minimum_BMI,
    MAX(BMI) AS maximum_BMI
FROM structured_endometriosis_data;

-- 18. Distinct ages in the dataset
SELECT DISTINCT Age
FROM structured_endometriosis_data
ORDER BY Age;

-- 19. Diagnosis groups with more than 100 patients
SELECT
    Diagnosis,
    COUNT(*) AS total_patients
FROM structured_endometriosis_data
GROUP BY Diagnosis
HAVING COUNT(*) > 100;

-- 20. Average age by diagnosis
SELECT
    Diagnosis,
    AVG(Age) AS average_age
FROM structured_endometriosis_data
GROUP BY Diagnosis;

-- 21. Number of patients with BMI greater than 25
SELECT COUNT(*) AS overweight_patients
FROM structured_endometriosis_data
WHERE BMI > 25;

-- 22. Percentage of diagnosed patients
SELECT
ROUND(
100.0 * SUM(Diagnosis) / COUNT(*),
2
) AS diagnosis_percentage
FROM structured_endometriosis_data;

-- 23. Average hormone level by diagnosis
SELECT
Diagnosis,
AVG(Hormone_Level_A) AS average_hormone
FROM structured_endometriosis_data
GROUP BY Diagnosis;

-- 24. Patients with high pain level (greater than 7)
SELECT *
FROM structured_endometriosis_data
WHERE Chronic_Pain_Level > 7
ORDER BY Chronic_Pain_Level DESC;

-- 25. Average BMI of patients over 35 years old
SELECT
AVG(BMI) AS average_BMI
FROM structured_endometriosis_data
WHERE Age > 35;

-- ============================================
-- Advanced SQL Queries
-- ============================================

-- 21. Number of patients with BMI greater than 25
SELECT COUNT(*) AS overweight_patients
FROM structured_endometriosis_data
WHERE BMI > 25;

-- 22. Percentage of diagnosed patients
SELECT
ROUND(
100.0 * SUM(Diagnosis) / COUNT(*),
2
) AS diagnosis_percentage
FROM structured_endometriosis_data;

-- 23. Average hormone level by diagnosis
SELECT
Diagnosis,
AVG(Hormone_Level_A) AS average_hormone
FROM structured_endometriosis_data
GROUP BY Diagnosis;

-- 24. Patients with high pain level (greater than 7)
SELECT *
FROM structured_endometriosis_data
WHERE Chronic_Pain_Level > 7
ORDER BY Chronic_Pain_Level DESC;

-- 25. Average BMI of patients over 35 years old
SELECT
AVG(BMI) AS average_BMI
FROM structured_endometriosis_data
WHERE Age > 35;

-- 26. Number of patients by BMI category
SELECT
CASE
    WHEN BMI < 18.5 THEN 'Underweight'
    WHEN BMI < 25 THEN 'Normal'
    WHEN BMI < 30 THEN 'Overweight'
    ELSE 'Obese'
END AS BMI_Category,
COUNT(*) AS Total_Patients
FROM structured_endometriosis_data
GROUP BY BMI_Category;

-- 27. Average chronic pain level for infertile patients
SELECT
AVG(Chronic_Pain_Level) AS Average_Pain
FROM structured_endometriosis_data
WHERE Infertility = 1;

-- 28. Patients with both infertility and diagnosis
SELECT *
FROM structured_endometriosis_data
WHERE Infertility = 1
AND Diagnosis = 1;

-- 29. Highest hormone level recorded
SELECT *
FROM structured_endometriosis_data
ORDER BY Hormone_Level_A DESC
LIMIT 1;

-- 30. Summary statistics
SELECT
COUNT(*) AS Total_Patients,
AVG(Age) AS Average_Age,
AVG(BMI) AS Average_BMI,
AVG(Chronic_Pain_Level) AS Average_Pain,
AVG(Hormone_Level_A) AS Average_Hormone
FROM structured_endometriosis_data;



