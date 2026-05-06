-- ============================================
-- Validation Queries
-- ============================================

-- View recent dynamic table refresh history
SELECT *
FROM SNOWFLAKE.ACCOUNT_USAGE.DYNAMIC_TABLE_REFRESH_HISTORY
ORDER BY DATA_TIMESTAMP DESC;

-- View failed refreshes only
SELECT *
FROM SNOWFLAKE.ACCOUNT_USAGE.DYNAMIC_TABLE_REFRESH_HISTORY
WHERE STATE = 'FAILED'
ORDER BY DATA_TIMESTAMP DESC;

-- Verify task execution history
SELECT *
FROM TABLE(INFORMATION_SCHEMA.TASK_HISTORY())
ORDER BY SCHEDULED_TIME DESC;
