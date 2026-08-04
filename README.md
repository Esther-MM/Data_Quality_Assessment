# Data Quality Assessment

## Project Overview

This project evaluates a customer sales dataset sample using the six dimensions of data quality commonly applied in Data Engineering:

- Accuracy
- Consistency
- Timeliness
- Validity
- Completeness
- Uniqueness

The objective is to identify data quality issues and recommend improvements that would improve downstream analytics and reporting.

---

## Dataset

The dataset contains customer purchase information including:

- Customer ID
- Name
- Email
- Product Purchased
- Sales Date
- Sales Amount
- Temperature
- Sensor Reading
- Shipping Address
- Order Status
- Payment Method
- Quantity

---

## Data Quality Issues Found

✔ Invalid email addresses

✔ Missing shipping address

✔ Missing sensor readings

✔ Missing temperature values

✔ Negative sales amount

✔ Potential duplicate records

✔ Outdated sales record

---

## Data Quality Dimensions Evaluated

| Dimension | Status |
|-----------|---------|
| Accuracy | Reviewed |
| Consistency | Reviewed |
| Timeliness | Reviewed |
| Validity | Reviewed |
| Completeness | Reviewed |
| Uniqueness | Reviewed |

---

## Recommendations

- Standardize email formats
- Validate numeric ranges
- Detect duplicate transactions
- Enforce mandatory fields
- Automate validation in ETL pipelines
- Apply business rules before loading data

---

```text
.
├── README.md
├── data/
│   └── customer_sales_dataset.csv
├── docs/
│   └── data_quality_assessment_report.md
└── sql/
    ├── duplicate_detection.sql
    ├── invalid_email.sql
    └── missing_values.sql
```

---

## Skills Demonstrated

- Data Quality Assessment
- Data Validation
- SQL
- Data Cleaning
- ETL Best Practices
- Documentation

---

## Key Takeaways

This project demonstrates the application of the six dimensions of data quality to evaluate a customer sales dataset. It highlights how identifying and addressing data quality issues improves data reliability and supports trustworthy analytics, reporting, and business decision-making. The project also reinforces the importance of implementing validation rules, standardisation, and data quality checks as part of modern data engineering and ETL workflows.

---

## Author

**Esther Mamtoshu**

Data Engineer.
