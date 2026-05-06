-- ============================================
-- Scheduled Monitoring Task
-- ============================================

CREATE OR REPLACE TASK DYNAMIC_TABLE_MONITOR_TASK
WAREHOUSE = MONITORING_WH
SCHEDULE = 'USING CRON 0 * * * * America/Phoenix'
AS

CALL MONITOR_DYNAMIC_TABLE_FAILURES();
