CREATE DATABASE telco_churn;
USE telco_churn;

CREATE TABLE customers (
	customerID VARCHAR(20),
    gender VARCHAR(10),	
    SeniorCitizen VARCHAR(10),	
    Partner	VARCHAR(10),
    Dependents VARCHAR(10),
    tenure INT,
    PhoneService VARCHAR(10),
    MultipleLines VARCHAR(20),
    InternetService	VARCHAR(20),
    OnlineSecurity VARCHAR(20),
    OnlineBackup VARCHAR(20),
    DeviceProtection VARCHAR(20),	
    TechSupport	VARCHAR(20),
    StreamingTV	VARCHAR(20),
    StreamingMovies	VARCHAR(20),
    Contract VARCHAR(20),
    PaperlessBilling VARCHAR(10),
    PaymentMethod VARCHAR(40),
    MonthlyCharges DECIMAL(10,2),
    MonthlyCharge_Groups VARCHAR(10),
    TotalCharges VARCHAR(20),
    Churn VARCHAR(10)
    );
    
-- Data imported using mysqlimport with semicolon separator (Portuguese CSV format)

SELECT COUNT(*) FROM customers;
SELECT * FROM customers LIMIT 10;

