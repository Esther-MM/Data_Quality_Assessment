# Data Quality Assessment Report

## Project Overview

This project demonstrates the evaluation of a customer sales dataset using the six dimensions of data quality: **accuracy, consistency, timeliness, validity, completeness, and uniqueness**. 
The objective is to identify data quality issues that could affect downstream analytics and recommend practical improvements aligned with data engineering best practices.

> **Note:** The dataset is a sample dataset and provided for educational purposes.

---

# Objectives

The objectives of this assessment were to:

* Evaluate the dataset using the six dimensions of data quality.
* Identify records containing data quality issues.
* Recommend improvements to enhance data reliability.
* Demonstrate documentation and data validation practices commonly used in data engineering workflows.

---

# Dataset Overview

The dataset contains customer sales records with the following attributes:

* Customer ID
* Customer Name
* Email Address
* Product Purchased
* Sales Date
* Amount (USD)
* Temperature (°C)
* Sensor Reading (units)
* Shipping Address
* Order Status
* Payment Method
* Quantity

The dataset combines customer, sales, and sensor information to simulate a real-world scenario where multiple data sources require quality validation before analysis.

---

# Assessment Methodology

The dataset was evaluated against the following six dimensions of data quality:

1. Accuracy
2. Consistency
3. Timeliness
4. Validity
5. Completeness
6. Uniqueness

Each dimension was reviewed by identifying potential issues, assessing their impact on data quality, and proposing practical recommendations for improvement.

---

# Findings

## 1. Accuracy

### Findings

* A negative sales amount (-250 USD) was identified.
* Sensor measurements should be validated against acceptable operating ranges.
* Missing environmental measurements reduce confidence in analytical results.

### Recommendations

* Prevent negative sales amounts unless transactions are classified as refunds.
* Define acceptable operating ranges for sensor measurements.
* Validate numerical values during data ingestion.

---

## 2. Consistency

### Findings

* Email addresses follow inconsistent formatting.
* Missing values are represented inconsistently.
* Standardisation opportunities exist for categorical fields such as order status.

### Recommendations

* Apply consistent formatting standards.
* Use a single representation for missing values.
* Maintain reference tables for categorical values.

---

## 3. Timeliness

### Findings

* One sales record predates the majority of the dataset.
* Historical records may require archiving depending on business requirements.

### Recommendations

* Define acceptable reporting periods.
* Archive historical records where appropriate.
* Validate dates during ETL processing.

---

## 4. Validity

### Findings

Several email addresses do not follow valid email formatting rules.

Examples include:

* Missing '@'
* Multiple '@' symbols
* Missing domain names

A negative sales amount also violates expected business rules.

### Recommendations

* Validate email addresses using regular expressions (Regex).
* Apply business rules to numeric fields.
* Reject invalid records before loading into analytical systems.

---

## 5. Completeness

### Findings

Missing values were identified in:

* Shipping Address
* Temperature
* Sensor Reading

Some missing values are essential for operational reporting, while others depend on the intended analysis.

### Recommendations

* Require mandatory fields during data collection.
* Retrieve missing information from source systems where possible.
* Flag incomplete records for review before analysis.

---

## 6. Uniqueness

### Findings

Two records contain highly similar values and may represent duplicate transactions.

Although customer identifiers differ, duplicate detection should be included within data quality workflows.

### Recommendations

* Implement duplicate detection rules.
* Use unique identifiers such as Customer ID and Order ID.
* Schedule routine deduplication checks within ETL pipelines.

---

# Summary of Issues Identified

| Data Quality Dimension | Issues Identified                                                     |
| ---------------------- | --------------------------------------------------------------------- |
| Accuracy               | Negative sales amount, questionable sensor values                     |
| Consistency            | Inconsistent email formats, inconsistent missing value representation |
| Timeliness             | Older sales record requiring review                                   |
| Validity               | Invalid email formats, business rule violations                       |
| Completeness           | Missing shipping address, temperature, and sensor readings            |
| Uniqueness             | Potential duplicate transaction                                       |

---

# Overall Recommendations

To improve data quality, the following practices are recommended:

* Standardise data formats across all fields.
* Implement automated validation during data entry and ETL processing.
* Enforce business rules for numeric and categorical values.
* Require completion of mandatory fields before records are accepted.
* Regularly profile datasets to identify duplicates and missing values.
* Monitor data quality continuously through scheduled validation checks.

---

# Conclusion

This assessment demonstrates how the six dimensions of data quality can be applied to evaluate a customer sales dataset before it is used for reporting or analytics. 
Identifying issues related to accuracy, consistency, timeliness, validity, completeness, and uniqueness helps improve confidence in the data and supports reliable business decision-making.

From a data engineering perspective, this project highlights the importance of integrating data quality checks into ETL pipelines to ensure datasets are clean, consistent, and fit for downstream analytical workloads.

---

# Skills Demonstrated

* Data Quality Assessment
* Data Profiling
* Data Validation
* Data Cleaning Principles
* SQL-based Data Validation
* ETL Best Practices
* Data Governance Fundamentals
* Technical Documentation
