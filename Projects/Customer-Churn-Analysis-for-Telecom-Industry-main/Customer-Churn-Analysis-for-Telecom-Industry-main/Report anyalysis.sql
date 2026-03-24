Create database Telecom;
USE Telecom;

CREATE TABLE telecom_churn_extended (
    customerID VARCHAR(20),
    gender VARCHAR(10),
    State VARCHAR(5),
    Account_length INT,
    Area_code INT,
    Contract VARCHAR(30),
    International_plan VARCHAR(5),
    Voice_mail_plan VARCHAR(5),
    Number_vmail_messages INT,
    
    Total_day_minutes FLOAT,
    Total_day_calls INT,
    Total_day_charge FLOAT,
    
    Total_eve_minutes FLOAT,
    Total_eve_calls INT,
    Total_eve_charge FLOAT,
    
    Total_night_minutes FLOAT,
    Total_night_calls INT,
    Total_night_charge FLOAT,
    
    Total_intl_minutes FLOAT,
    Total_intl_calls INT,
    Total_intl_charge FLOAT,
    
    Customer_service_calls INT,
    
    Churn VARCHAR(5),
    Churn_value INT,
    
    Total_Call_duration FLOAT,
    Complaints INT,
    
    PaperlessBilling VARCHAR(5),
    PaymentMethod VARCHAR(50),
    
    Recharge_Frequency FLOAT,
    Total_charge FLOAT,
    Avg_Days_Between_Recharge FLOAT,
    Estimated_recharge_freq FLOAT
);

SELECT * FROM telecom_churn_extended;

#SQL Data Aggregation (Business KPIs)
#Churn Rate by Contract Type

SELECT 
    Contract,
    ROUND(AVG(Total_Call_duration),2) AS Avg_Call_Mins,
    SUM(Complaints) AS Total_Complaints,
    ROUND(AVG(Recharge_Frequency),2) AS Avg_Monthly_Recharges,
    SUM(Churn_value) AS Churn_Count,
    ROUND((SUM(Churn_value) / COUNT(*)) * 100,2) AS Churn_Rate_Percentage
FROM telecom_churn_extended
GROUP BY Contract;

#Average Monthly Charges by Churn

SELECT 
    Churn,
    ROUND(AVG(Total_charge), 2) AS Avg_Total_Charge
FROM telecom_churn_extended
GROUP BY Churn;

#Tenure vs Churn
SELECT 
    CASE 
        WHEN Account_length < 12 THEN '0-1 Year'
        WHEN Account_length BETWEEN 12 AND 24 THEN '1-2 Years'
        ELSE '2+ Years'
    END AS Tenure_Group,
    
    COUNT(*) AS Customers,
    
    SUM(CASE WHEN Churn = 'TRUE' THEN 1 ELSE 0 END) AS Churn_Count,
    
    ROUND(
        SUM(CASE WHEN Churn = 'TRUE' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Churn_Rate_Percentage

FROM telecom_churn_extended
GROUP BY Tenure_Group
ORDER BY Tenure_Group;

-- Identifying Top 10 High-Value Churners
SELECT 
    customerID, 
    Account_length AS tenure, 
    Total_charge,
    Total_day_charge,
    Total_eve_charge,
    Total_night_charge,
    Total_intl_charge
FROM telecom_churn_extended
WHERE Churn = 'TRUE'
ORDER BY Total_charge DESC
LIMIT 10;

-- Analyzing Churn Rate for customers with vs. without Tech Support
SELECT 
    Customer_service_calls,
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn = 'TRUE' THEN 1 ELSE 0 END) AS Churned_Count,
    ROUND(
        SUM(CASE WHEN Churn = 'TRUE' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Churn_Rate_Percent
FROM telecom_churn_extended
GROUP BY Customer_service_calls
ORDER BY Customer_service_calls;

-- Analysis of Contract Type and Payment Method on Churn
SELECT 
    Contract,
    PaymentMethod,
    
    COUNT(*) AS Customer_Count,
    
    ROUND(AVG(Account_length), 2) AS Avg_Tenure,
    
    SUM(CASE WHEN Churn = 'TRUE' THEN 1 ELSE 0 END) AS Churn_Count,
    
    ROUND(
        SUM(CASE WHEN Churn = 'TRUE' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Churn_Rate_Percentage

FROM telecom_churn_extended
GROUP BY Contract, PaymentMethod
ORDER BY Churn_Count DESC;

#Call Duration Analysis

-- Calculating Average and Total Call Duration by Churn Status
SELECT 
    Churn,
    COUNT(customerID) AS Total_Customers,
    ROUND(AVG(Total_Call_Duration), 2) AS Avg_Call_Duration,
    SUM(Total_Call_Duration) AS Total_Mins_Used
FROM telecom_churn_extended
GROUP BY Churn;

-- Identifying Top 10 Customers with highest call duration who are 'At Risk'
SELECT 
    customerID, 
    Total_Call_duration, 
    Total_charge
FROM telecom_churn_extended
WHERE Churn = 'TRUE'
ORDER BY Total_Call_duration DESC
LIMIT 10;

#Aggregation: Complaints vs Churn

SELECT 
    Complaints,
    COUNT(*) AS Total_Customers,
    
    SUM(CASE WHEN Churn = 'TRUE' THEN 1 ELSE 0 END) AS Churned_Customers,
    
    ROUND(
        SUM(CASE WHEN Churn = 'TRUE' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Churn_Rate_Percentage

FROM telecom_churn_extended
GROUP BY Complaints
ORDER BY Complaints DESC;

#Recharge Frequency vs Churn

SELECT 
    CASE 
        WHEN Recharge_Frequency < 1 THEN 'Low Recharge'
        WHEN Recharge_Frequency BETWEEN 1 AND 3 THEN 'Medium Recharge'
        ELSE 'High Recharge'
    END AS Recharge_Category,
    
    COUNT(*) AS Total_Customers,
    
    SUM(CASE WHEN Churn = 'TRUE' THEN 1 ELSE 0 END) AS Churned_Customers,
    
    ROUND(
        SUM(CASE WHEN Churn = 'TRUE' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Churn_Rate_Percentage

FROM telecom_churn_extended
GROUP BY Recharge_Category
ORDER BY Churn_Rate_Percentage DESC;

#Top 10 Highest Risk Customers Query

SELECT 
    customerID,
    Complaints,
    Customer_service_calls,
    Recharge_Frequency,
    Total_Call_duration,
    
    (
        Complaints * 2 +
        Customer_service_calls * 2 +
        (CASE WHEN Recharge_Frequency < 1 THEN 3 ELSE 0 END) +
        (CASE WHEN Total_Call_duration > 500 THEN 2 ELSE 0 END)
    ) AS Risk_Score

FROM telecom_churn_extended

ORDER BY Risk_Score DESC
LIMIT 10;

#RISK, Regurlar, Dormant for the data. 

SELECT 
    customerID,
    
    CASE 
        WHEN Churn = 'TRUE' THEN 'Dormant'
        
        WHEN Recharge_Frequency >= 2 
             AND Complaints = 0 
             AND Customer_service_calls <= 1 
             THEN 'Loyal'
             
        WHEN Recharge_Frequency < 1.5 
             AND (Complaints >= 2 OR Customer_service_calls >= 3)
             THEN 'At Risk'
             
        ELSE 'Regular'
        
    END AS Customer_Segment

FROM telecom_churn_extended;


#Segment Distribution

SELECT 
    Customer_Segment,
    COUNT(*) AS Customer_Count
FROM (
    SELECT 
        CASE 
            WHEN Churn = 'TRUE' THEN 'Dormant'
            WHEN Recharge_Frequency >= 2 
                 AND Complaints = 0 
                 AND Customer_service_calls <= 1 
                 THEN 'Loyal'
            WHEN Recharge_Frequency < 1.5 
                 AND (Complaints >= 2 OR Customer_service_calls >= 3)
                 THEN 'At Risk'
            ELSE 'Regular'
        END AS Customer_Segment
    FROM telecom_churn_extended
) AS segment_table
GROUP BY Customer_Segment
ORDER BY Customer_Count DESC;