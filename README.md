# Snowflake Dynamic Table Monitoring

This project demonstrates a Snowflake monitoring solution that detects failed dynamic table refreshes and sends automated email notifications using Snowflake stored procedures, ACCOUNT_USAGE views, and scheduled tasks.

> Note: This is a sanitized portfolio version. All database names, schemas, warehouses, email addresses, and internal identifiers have been generalized.

---

## Overview

The solution monitors Snowflake dynamic table refresh history and automatically identifies failed refresh events within a defined time window.

If failures are detected:
- A stored procedure gathers failure details
- An automated email notification is triggered
- Support teams receive alert information for investigation

This monitoring pattern helps improve:
- ETL reliability
- Operational visibility
- Data pipeline monitoring
- Proactive incident response

---

## Technologies Used

- Snowflake SQL
- Snowflake Tasks
- Snowflake Stored Procedures
- ACCOUNT_USAGE Views
- Dynamic Tables
- SYSTEM$SEND_EMAIL
- ETL Monitoring Concepts

---

## Key Features

- Detects failed dynamic table refreshes
- Queries ACCOUNT_USAGE monitoring views
- Sends automated alert notifications
- Uses scheduled Snowflake tasks
- Supports operational monitoring workflows
- Designed for production-style ETL environments

---

## Example Monitoring Workflow

1. Dynamic table refresh occurs
2. Monitoring procedure checks refresh history
3. Failed refreshes are identified
4. Alert email is generated automatically
5. Support team investigates the failure

---

## Project Structure

```text
Snowflake-Dynamic-Table-Monitoring/
│
├── README.md
├── sql/
│   ├── dynamic_table_failure_email.sql
│   ├── create_task.sql
│   └── validation_queries.sql
│
├── docs/
│   └── architecture_overview.md
│
└── screenshots/
    └── README.md
```

---

## Skills Demonstrated

- Data Engineering
- Cloud Data Operations
- Snowflake Administration
- ETL Monitoring
- SQL Development
- Operational Troubleshooting
- Automation
- Pipeline Reliability

---

## Future Improvements

- Real-time alerting with Event Tables
- Dashboard integration
- Enhanced logging and metrics
- Multi-environment monitoring support
- Slack or Teams integration
