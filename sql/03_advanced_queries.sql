-- Churn by Critical Clients (month-month contract + senior citizens)
SELECT SeniorCitizen, Contract,
	COUNT(*) total_customers,
    SUM(Churn = 'Yes') churned_customers,
    SUM(Churn = 'Yes') * 100 / COUNT(*) churn_rate
FROM customers
GROUP BY SeniorCitizen, Contract
ORDER BY churn_rate DESC;

-- Churn by House Hold Type (Single, Couple, Single with Dependents, Family)
SELECT house_hold_type,
	total_customers,
    churned_customers,
    churn_rate
FROM (
	SELECT 
    CASE
		WHEN Partner = 'No' AND Dependents = 'No' THEN 'Single'
        WHEN Partner = 'Yes' AND Dependents = 'No' THEN 'Couple'
        WHEN Partner = 'No' AND Dependents = 'Yes' THEN 'Single with Dependents'
		WHEN Partner = 'Yes' AND Dependents = 'Yes' THEN 'Family'
    END AS house_hold_type,
    COUNT(*) total_customers,
    SUM(Churn = 'Yes') churned_customers,
    SUM(Churn = 'Yes') * 100 / COUNT(*) churn_rate
    FROM customers
    GROUP BY house_hold_type
) AS house_hold_data
ORDER BY churn_rate DESC;

-- Avg Monthly Charges and Total Monthly Charges
SELECT Churn,
	COUNT(*) total_customers,
    ROUND(AVG(MonthlyCharges),2) avg_monthly_charges,
    ROUND(SUM(MonthlyCharges), 2) total_monthly_charges
FROM customers
GROUP BY Churn;
    
-- Churn by Total Services
SELECT 
(OnlineSecurity = 'Yes')+(OnlineBackup = 'Yes')+(DeviceProtection = 'Yes')+(TechSupport = 'Yes')+(StreamingTV = 'Yes')+(StreamingMovies = 'Yes') total_services,
COUNT(*) total_customers,
SUM(Churn = 'Yes') churned_customers,
SUM(Churn = 'Yes') * 100 / COUNT(*) churn_rate
FROM customers
GROUP BY total_services;
    
    
 