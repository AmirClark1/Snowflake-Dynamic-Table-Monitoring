# Snowflake Dynamic Table Monitoring

This project demonstrates a Snowflake monitoring solution that detects failed dynamic table refreshes and sends automated email notifications using Snowflake stored procedures, ACCOUNT_USAGE views, and scheduled tasks.

> Note: This is a sanitized portfolio version. All database names, schemas, warehouses, email addresses, and internal identifiers have been generalized.

---

# Overview

The solution monitors Snowflake dynamic table refresh history and automatically identifies failed refresh events within a defined time window.

If failures are detected:

- A stored procedure gathers failure details
- An automated email notification is triggered
- Support teams receive alert information for investigation

This monitoring pattern helps improve operational visibility and reduces response time for failed refresh events in production-style data environments.

---

# Technologies Used

- Snowflake
- Snowflake Tasks
- Snowflake Stored Procedures
- Snowflake ACCOUNT_USAGE Views
- SQL
- Dynamic Tables
- Automated Email Notifications
- GitHub

---

# Business Problem

Dynamic table refresh failures were difficult to identify quickly in large Snowflake environments.

Support teams needed a way to automatically detect failures and notify engineers before downstream reporting, analytics, or data pipelines were impacted.

Without automated monitoring:
- Failures could go unnoticed
- Data freshness could become unreliable
- Troubleshooting response times increased

---

# Solution Architecture

This solution uses:

1. Snowflake ACCOUNT_USAGE views to monitor refresh history
2. A stored procedure to identify failed refresh events
3. Automated email notifications for alerting
4. A scheduled Snowflake task for continuous monitoring
5. Validation queries for troubleshooting and operational verification

---

# Repository Structure

```text
Snowflake-Dynamic-Table-Monitoring/
│
├── README.md
├── .gitignore
│
├── sql/
│   ├── dynamic_table_failure_email.sql
│   ├── create_task.sql
│   └── validation_queries.sql
│
├── screenshots/
│
└── docs/
```

---

# Key Features

- Automated monitoring of dynamic table refresh failures
- Scheduled monitoring using Snowflake Tasks
- Email alerting for failed refresh events
- Validation queries for operational troubleshooting
- Modular SQL structure
- Production-style monitoring workflow
- Sanitized for public portfolio demonstration

---

# Monitoring Workflow

1. Dynamic tables refresh on schedule
2. Monitoring task executes at a defined interval
3. Stored procedure queries ACCOUNT_USAGE refresh history
4. Failed refresh events are identified
5. Alert notifications are automatically generated
6. Support teams investigate and remediate issues

---

# Example Monitoring Query

```sql
SELECT *
FROM SNOWFLAKE.ACCOUNT_USAGE.DYNAMIC_TABLE_REFRESH_HISTORY
WHERE STATE = 'FAILED'
ORDER BY DATA_TIMESTAMP DESC;
```

---

# Screenshots

### Task Execution
![Task Execution]
<img width="1677" height="938" alt="449f6412-48b1-4bbc-8053-9f9a1d0c79ba" src="https://github.com/user-attachments/assets/9cd593ac-cd45-46c7-8bd9-808b6af92cf5" />

### Stored Procedure Creation
![Stored Procedure]   
<img width="1712" height="919" alt="image" src="https://github.com/user-attachments/assets/38e24f1c-42fe-496b-ad8c-dcacaf22e34e" /> 



### Dynamic Table Monitoring Query
![Dynamic Table Query]
<img width="1753" height="897" alt="1653ffbb-f8d6-49c4-9c60-be25bb1e100f" src="https://github.com/user-attachments/assets/4c946b86-777e-4b67-8397-08c93f920c07" />



---

# Lessons Learned

During this project I gained hands-on experience with:

- Snowflake task scheduling
- Stored procedure development
- Monitoring production-style workloads
- ACCOUNT_USAGE system views
- Automated alerting workflows
- Debugging scheduled task timing
- Data pipeline operational monitoring
- SQL troubleshooting and validation

---

# Future Improvements

Potential future enhancements include:

- Slack or Microsoft Teams alert integrations
- Centralized monitoring dashboards
- Severity-based alert escalation
- Historical logging and audit tracking
- Near real-time event-driven monitoring
- Enhanced observability and reporting

---

# Security Notice

This repository contains sanitized examples only.

The following have been intentionally removed or generalized:

- Internal account identifiers
- Email addresses
- Warehouse names
- Organization-specific naming conventions
- Production schedules
- Sensitive operational details

No confidential or proprietary information is included.

---

# Author

Amir Clark

Cloud/Data Engineering Portfolio Project  
Built during hands-on Snowflake operational engineering work and monitoring automation efforts.
