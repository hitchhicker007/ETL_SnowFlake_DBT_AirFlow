## Project Desciption

This project is an ETL Pipeline using Dbt (dbt-core) for transformation, Snowflake for data warehousing and Airflow for orchestration.

![1_I-KTOig5A7i3UFAisWaK7g](https://github.com/elmezianech/snowflake_dbt_airflow_etl/assets/120784838/d4deb775-ef1b-4595-a440-bb974f24e659)

## Dataset 

This project uses the Snowflake tpch dataset (tpch_sf1 schema).

## Project Implementation

#### Step 1 : Setup dbt + Snowflake

Creates a Snowflake environment with a warehouse, database, and user role for dbt to access and manage data.


#### Step 2 : Configure dbt_project.yml and packages

Defines a configuration file (dbt_profile.yaml) that specifies how dbt interacts with Snowflake, including the warehouse and schema to use for staging and production data.

#### Step 3 : Create source and staging tables

Creates source and staging models:

- Source models define how to access raw data from Snowflake's sample data (tpch_sf1 schema).
- Staging models define SQL queries to transform raw data into a format suitable for further processing.

#### Step 4 : Macro functions

Creates a reusable function (macro) to calculate discounted amounts based on extended price and discount percentage.

#### Step 5 : Transformed models (fact tables, data marts)

Creates dbt models for data transformation:

- Intermediate tables join data from staging models and perform calculations.
- Data marts aggregate and summarize data for specific use cases.
- Fact tables integrate data from various sources for analysis.

#### Step 6 : Generic and singular tests

Creates generic and singular tests for data quality:

- Generic tests (defined in YAML) enforce data integrity rules like uniqueness, not null values, and relationships between tables.
- Singular tests (written in SQL) identify specific data quality issues like invalid dates or orders with discounts.

#### Step 7 : Deploy models using Airflow

Configures Airflow to run the dbt pipeline, I used Astronomer Cosmos for deploying the dbt project into airflow:

- Sets up Airflow with necessary Python libraries for dbt and Snowflake connection.
- Defines a Snowflake connection within the Airflow UI.
- Creates a Python script (dbt_dag.py) that configures an Airflow DAG (Directed Acyclic Graph) to run the dbt project at scheduled intervals. This DAG uses the dbt project directory, profile configuration (including Snowflake connection details), and execution settings (including the path to the dbt executable).



---

## Collaboration and Feedback

If you have suggestions, improvements, or would like to contribute, please create an [issue](https://github.com/hitchhicker007/hr_analytics_powerbi.git/issues) or [pull request](https://github.com/hitchhicker007/hr_analytics_powerbi.git/pulls). Your input is valuable in enhancing the effectiveness of HR analytics.

--- 

## LinkedIn

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-blue)](https://www.linkedin.com/in/parthpanchal8401)
`