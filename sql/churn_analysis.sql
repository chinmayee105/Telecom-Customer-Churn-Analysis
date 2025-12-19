create database telecom;

use telecom;

SELECT * FROM telecom_final;


-- Q1. Total Customers 

SELECT COUNT(*) AS TOTAL_CUSTOMERS
FROM telecom_final;

-- Q2. Overall Churn Rate

SELECT 
	churn, 
    COUNT(*) * 100.0 / (SELECT COUNT(*) FROM telecom_final) AS churn_percentage
 FROM telecom_final
 GROUP BY churn;
 
 -- Q3. Churn by Tenure Group
 
 SELECT tenure_group, churn, COUNT(*) AS customers 
 FROM telecom_final
 GROUP BY tenure_group, churn
 ORDER BY tenure_group;

-- Q4. Avg Customer Service Calls by Churn 

SELECT churn, AVG(customer_service_calls) AS avg_service_calls 
FROM telecom_final
GROUP BY churn;

-- Q5. Churn by Customer Value

SELECT customer_value, churn, COUNT(*) AS customers
FROM telecom_final
GROUP BY customer_value, churn;

-- Q6. High-Value Customers Who Churned

SELECT COUNT(*) AS high_value_churn
FROM telecom_final
WHERE customer_value = "High Value" AND churn = "YES";

-- Q7 Avg Charges by Churn 

SELECT churn, AVG(total_intl_charge) AS avg_total_charges
FROM telecom_final
GROUP BY churn;

-- Q8. International Plan vs Churn

SELECT international_plan, churn, COUNT(*) AS customers
FROM telecom_final
GROUP BY international_plan, churn;

-- Q9. Top 10 High Revenue Customers

SELECT *
FROM telecom_final
ORDER BY total_intl_charge DESC
LIMIT 10;

-- Q10. International PLan vs Churn 

SELECT international_plan, churn, COUNT(*) AS customers
FROM telecom_final
GROUP BY international_plan, churn;