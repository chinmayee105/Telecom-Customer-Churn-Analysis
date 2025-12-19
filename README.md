# 📊 Telecom Customer Churn Analysis (End-to-End Project)

## 🔍 Project Overview

Customer churn is a critical challenge in the telecom industry, directly impacting revenue and customer lifetime value. This project focuses on analyzing telecom customer data to identify **key churn drivers**, **high-risk customer segments**, and **revenue-impacting factors** using **Python, SQL, and Power BI**.

The project demonstrates a complete data analytics lifecycle — from raw data cleaning to business-ready dashboards — designed to reflect **real-world analyst work**, not just academic exercises.

---

## 🎯 Objectives

* Analyze overall customer churn behavior
* Identify key factors contributing to customer churn
* Understand the relationship between service usage, customer support, and churn
* Evaluate revenue contribution by customer segments
* Build an executive-level Power BI dashboard for data-driven decision-making

---

## 🧰 Tools & Technologies

| Tool                     | Usage                                       |
| ------------------------ | ------------------------------------------- |
| **Python**               | Data cleaning, EDA, feature engineering     |
| **Pandas**               | Data manipulation                           |
| **Matplotlib / Seaborn** | Exploratory visual analysis                 |
| **SQL**                  | Aggregation and churn analysis queries      |
| **Power BI**             | Interactive dashboard and business insights |
| **GitHub**               | Version control and project hosting         |

---

## 📁 Project Structure

```
telecom-customer-churn-analysis/
│
├── data/
│   ├── raw/
│   │   └── churn-bigml-80.csv
│       └── telecom_cleaned.csv
│
├── python/
│   ├── Telecom_Churn_File.ipynb
│   
├── sql/
│   └── churn_analysis.sql
│
├── powerbi/
│   └── telecom_churn_dashboard.pbix
│
├── images/
│   └── Telecom_Churn_Dashboard.png
│
└── README.md
```

---

## 📊 Dataset Description

* **Source:** Kaggle – Telecom Churn Dataset
* **Records:** 2,666 customers
* **Features:** 20 columns including usage patterns, plans, service calls, and churn status
* **Target Variable:** `churn` (Yes / No)

---

## 🧹 Data Cleaning & Feature Engineering (Python)

Python was used to perform data loading, validation, cleaning, and feature engineering to prepare the dataset for SQL analysis and Power BI visualization.

### 🔹 Data Loading & Validation

* Loaded the dataset using Pandas
* Performed initial checks using `shape`, `head()`, and `info()` to validate:

  * Number of rows and columns
  * Data types
  * Presence of the churn column

### 🔹 Data Quality Checks

* Checked and removed duplicate records (if any)
* Standardized column names by:

  * Converting to lowercase
  * Removing extra spaces
  * Replacing spaces with underscores
* Verified missing values across all columns

### 🔹 Churn Label Transformation

* Converted churn values from boolean format to readable categorical values (`Yes` / `No`)
* Improved readability and usability for SQL queries and Power BI visuals

### 🔹 Feature Engineering

The following business-relevant features were created:

* **Tenure Group**
  Customers were segmented into tenure buckets (e.g., 0–1 year, 1–2 years, etc.) to analyze churn behavior across customer lifecycle stages.

* **Average Monthly Spend**
  Calculated by dividing total charges by tenure to analyze spending behavior. Infinite values were handled appropriately.

* **Customer Value Segmentation**
  Customers were categorized into **Low**, **Medium**, and **High Value** segments using quantile-based binning on total charges.

### 🔹 Final Dataset Validation

* Re-verified data types and newly created features
* Ensured the dataset was analysis-ready for SQL and Power BI

The cleaned dataset was then exported for further analysis and visualization.

---

## 🗄️ SQL Analysis

SQL was used to validate business metrics and derive insights, including:

* Overall churn rate
* Churn analysis by international plan
* Revenue contribution by customer segment

**Sample Query:**

```sql
SELECT
  ROUND(SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate
FROM telecom;
```

---

## 📊 Power BI Dashboard

An interactive Power BI dashboard was built to present insights in a business-friendly and executive-ready format.

### Dashboard Highlights

* Total Customers, Total Revenue, and Churn Rate KPIs
* Customer churn distribution (Yes vs No)
* Churn comparison for international vs non-international plan users
* Average customer service calls by customer segment
* Top revenue-contributing states

### Dashboard Preview

![Dashboard Preview](images/dashboard.png)

---

## 🔑 Key Business Insights

* Overall churn rate is **14.55%**
* Customers with **international plans** exhibit significantly higher churn
* Increased **customer service calls** strongly correlate with churn risk
* **High-value customers** contribute the majority of revenue but still face churn threats

---

## 📌 Business Recommendations

* Proactively target international plan customers with tailored retention offers
* Improve customer support efficiency to reduce repeat service calls
* Focus retention strategies on high-value customers to minimize revenue loss

---

## 🚀 Conclusion

This project demonstrates a complete end-to-end telecom churn analysis using industry-standard tools and workflows. It showcases the ability to translate raw data into actionable business insights and executive-level dashboards.

---

## 📎 Author

**Chinmayee Yawalkar**
Aspiring Data Analyst | Python | SQL | Power BI
