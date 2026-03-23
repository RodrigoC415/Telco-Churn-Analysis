SELECT * FROM customers;

-- 1 Overall Churn Rate
SELECT COUNT(*) total_customers, 
    SUM(Churn = 'Yes') churned_customers,
    SUM(Churn = 'Yes') * 100 / COUNT(*) churn_rate
FROM customers;

-- 2  Churn by Gender
SELECT gender,
	COUNT(*) total_customers,
    SUM(Churn = 'Yes') churned_customers,
    SUM(Churn = 'Yes') * 100 / COUNT(*) churn_rate
FROM customers
GROUP BY gender;

-- 3  Churn by Senior Citizen
SELECT SeniorCitizen,
	COUNT(*) total_customers,
    SUM(Churn = 'Yes') churned_customers,
    SUM(Churn = 'Yes') * 100 / COUNT(*) churn_rate
FROM customers
GROUP BY SeniorCitizen;

-- 4  Churn by Partner 
SELECT Partner,
	COUNT(*) total_customers,
    SUM(Churn = 'Yes') churned_customers,
    SUM(Churn = 'Yes') * 100 / COUNT(*) churn_rate
FROM customers
GROUP BY Partner;

-- 5 Churn by Tenure Group
SELECT 
    CASE 
        WHEN tenure <= 12 THEN 'New'
        WHEN tenure <= 36 THEN 'Mid'
        ELSE 'Long'
    END AS tenure_group,
    COUNT(*) total_customers,
    SUM(Churn = 'Yes') churned_customers,
    SUM(Churn = 'Yes') * 100 / COUNT(*) churn_rate
FROM customers
GROUP BY tenure_group;

-- 6 Churn by Phone Service
-- Result: No significant difference across phone service options
SELECT PhoneService,
	COUNT(*) total_customers,
    SUM(Churn = 'Yes') churned_customers,
    SUM(Churn = 'Yes') * 100 / COUNT(*) churn_rate
FROM customers
GROUP BY PhoneService;

SELECT MultipleLines,
	COUNT(*) total_customers,
    SUM(Churn = 'Yes') churned_customers,
    SUM(Churn = 'Yes') * 100 / COUNT(*) churn_rate
FROM customers
GROUP BY MultipleLines;

-- 7 Churn by Internet Service
SELECT InternetService,
	COUNT(*) total_customers,
    SUM(Churn = 'Yes') churned_customers,
    SUM(Churn = 'Yes') * 100 / COUNT(*) churn_rate
FROM customers
GROUP BY InternetService;

SELECT OnlineSecurity,
	COUNT(*) total_customers,
    SUM(Churn = 'Yes') churned_customers,
    SUM(Churn = 'Yes') * 100 / COUNT(*) churn_rate
FROM customers
GROUP BY OnlineSecurity;

SELECT OnlineBackup,
	COUNT(*) total_customers,
    SUM(Churn = 'Yes') churned_customers,
    SUM(Churn = 'Yes') * 100 / COUNT(*) churn_rate
FROM customers
GROUP BY OnlineBackup;

SELECT DeviceProtection,
	COUNT(*) total_customers,
    SUM(Churn = 'Yes') churned_customers,
    SUM(Churn = 'Yes') * 100 / COUNT(*) churn_rate
FROM customers
GROUP BY DeviceProtection;

SELECT TechSupport,
	COUNT(*) total_customers,
    SUM(Churn = 'Yes') churned_customers,
    SUM(Churn = 'Yes') * 100 / COUNT(*) churn_rate
FROM customers
GROUP BY TechSupport;

SELECT StreamingTV,
	COUNT(*) total_customers,
    SUM(Churn = 'Yes') churned_customers,
    SUM(Churn = 'Yes') * 100 / COUNT(*) churn_rate
FROM customers
GROUP BY StreamingTV;

SELECT StreamingMovies,
	COUNT(*) total_customers,
    SUM(Churn = 'Yes') churned_customers,
    SUM(Churn = 'Yes') * 100 / COUNT(*) churn_rate
FROM customers
GROUP BY StreamingMovies;

-- 8 Churn by Contract Type
SELECT Contract,
	COUNT(*) total_customers,
    SUM(Churn = 'Yes') churned_customers,
    SUM(Churn = 'Yes') * 100 / COUNT(*) churn_rate
FROM customers
GROUP BY Contract;

-- 9 Churn by Billing
SELECT PaperlessBilling,
	COUNT(*) total_customers,
    SUM(Churn = 'Yes') churned_customers,
    SUM(Churn = 'Yes') * 100 / COUNT(*) churn_rate
FROM customers
GROUP BY PaperlessBilling;

-- 8 Churn by Payment Method
SELECT PaymentMethod,
	COUNT(*) total_customers,
    SUM(Churn = 'Yes') churned_customers,
    SUM(Churn = 'Yes') * 100 / COUNT(*) churn_rate
FROM customers
GROUP BY PaymentMethod;

-- Churn by Payment Method (Groups: Automatic, No Automatic)
SELECT 
    CASE 
        WHEN PaymentMethod LIKE '%automatic%' THEN 'Automatic Payment'
        ELSE 'No Automatic Payment'
    END AS payment_group,
    COUNT(*) total_customers,
    SUM(Churn = 'Yes') churned_customers,
    SUM(Churn = 'Yes') * 100 / COUNT(*) churn_rate
FROM customers
GROUP BY payment_group;

-- 9 Churn by Montly Charges
SELECT MonthlyCharge_Groups,
	COUNT(*) total_customers,
    SUM(Churn = 'Yes') churned_customers,
    SUM(Churn = 'Yes') * 100 / COUNT(*) churn_rate
FROM customers
GROUP BY MonthlyCharge_Groups;




















