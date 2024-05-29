FROM quay.io/astronomer/astro-runtime:11.2.0

RUN python -m venv dbt_venv && source dbt_venv/bin/activate && pip install dbt-snowflake && deactivate


