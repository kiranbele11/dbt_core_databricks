# DBT Core Databricks Project 🚀

## Overview
This project implements data transformations using dbt (data build tool) with Databricks as the underlying data warehouse. It enables robust data modeling, testing, and documentation while leveraging the power of Databricks' distributed computing capabilities.

## 🏗️ Project Structure
  dbt_core_databricks/
├── models/
├── tests/
├── macros/
├── seeds/
├── analyses/
└── docs/

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
 
3. Configure your profiles.yml with your Databricks credentials (see example below)
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

## 🛠️ Usage

### Basic Commands

Run all models
dbt run
Test all models
dbt test
Generate documentation
dbt docs generate
dbt docs serve
Build specific models
dbt run --select model_name


### Model Tagging
Models can be tagged for selective running:
- `dbt run --select tag:daily`
- `dbt run --select tag:weekly`

## 📊 Testing
- Unit tests are located in the `tests` directory
- Run tests with `dbt test`
- Custom test macros available in `macros/tests`

## 📚 Documentation
- Model documentation is written in YAML files alongside models
- Generate and view docs locally using `dbt docs generate && dbt docs serve`
- Lineage graphs available in the documentation site

## 🔄 CI/CD
This project includes automated workflows for:
- Continuous Integration testing
- Documentation generation
- Production deployments

## 🤝 Contributing
1. Fork the repository
2. Create a feature branch
3. Commit changes
4. Push to the branch
5. Create a Pull Request

## 📝 Best Practices
- Follow [dbt coding conventions](https://docs.getdbt.com/guides/best-practices)
- Write descriptions for all models
- Include tests for all models
- Document all macros

## 🔐 Security
- Never commit sensitive information
- Use environment variables for credentials

## 📫 Support
For support and questions, please contact:
- Project maintainers

---
Built with ❤️ using [dbt](https://www.getdbt.com/) and [Databricks](https://databricks.com/)