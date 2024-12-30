# DBT Core Databricks Project 🚀

## Overview
This project implements data transformations using dbt (data build tool) with Databricks as the underlying data warehouse. The project follows a medallion architecture (Bronze, Silver, Gold layers) for data processing and includes comprehensive testing, documentation, and CI/CD integration.

## 🏗️ Project Structure

dbt_core_databricks/
├── models/
│ ├── bronze/ # Raw data ingestion
│ ├── silver/ # Cleaned and transformed data
│ ├── gold/ # Business-ready aggregations
│ └── sources/ # Source definitions
├── tests/ # Custom data tests
├── macros/ # Reusable SQL macros
├── seeds/ # Static data files
├── analyses/ # Ad-hoc analyses
├── docs/ # Documentation
└── snapshots/ # Table snapshots for SCD

## 📊 Data Model Overview

### Bronze Layer (Raw Data)
- Direct ingestion from landing zone
- Tables: orders, products, reviews, users
- Minimal transformations
- PII data tagged with 'contains_pii'

### Silver Layer (Transformed)
- Cleaned and standardized data
- Business logic applications
- Key models:
  - silver_orders: Calculated order amounts
  - silver_products: Current product information
  - silver_users: Anonymized user data

### Gold Layer (Business Ready)
- Aggregated analytics views
- Key models:
  - gold_sales__daily: Daily sales analytics
  - gold_avg_rating__daily: Product rating analytics

## 🚀 Getting Started

### Prerequisites
- dbt Core installed
- Databricks account and cluster
- Python 3.7+

### Setup
1. Clone the repository
bash
git clone <repository-url>

2. Install dependencies
bash
pip install dbt-databricks

3. Configure profiles.yml
yaml
dbt_core_databricks:
outputs:
dev:
type: databricks
catalog: your_catalog
schema: your_schema
host: your-databricks-host
http_path: your-http-path
token: your-token
threads: 1
target: dev

## 🛠️ Features

### Data Testing
- Generic tests for data quality
- Custom test macro: assert_non_negative
- Unit tests for transformations
- Source freshness checks

### Macros
- multiply_columns_and_round: Calculate monetary values
- generate_schema_name: Custom schema handling
- current_timestamp: Timestamp utilities

### Snapshots
- Type 2 SCD for products table
- Timestamp-based tracking
- Configured in snapshots/products_snapshots.sql

## 📚 Documentation
- Comprehensive table and column descriptions
- Source documentation in models/sources/_sources.md
- Generated documentation available via dbt docs

## 🔄 Development Workflow

### Basic Commands
bash
dbt run # Run all models
dbt test # Run all tests
dbt docs generate # Generate documentation
dbt docs serve # Serve documentation locally
dbt run --select tag:daily # Run tagged models

### Model Tags
- contains_pii: Models with sensitive data
- daily: Daily refresh models
- weekly: Weekly refresh models

## 🔐 Security
- PII data tagged and tracked
- Credentials managed via environment variables
- No sensitive information in repository

## 🤝 Contributing
1. Fork the repository
2. Create a feature branch
3. Commit changes
4. Push to the branch
5. Create a Pull Request


---
Built with ❤️ using [dbt](https://www.getdbt.com/) and [Databricks](https://databricks.com/)