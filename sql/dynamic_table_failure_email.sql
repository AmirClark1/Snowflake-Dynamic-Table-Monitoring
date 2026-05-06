-- ============================================
-- Dynamic Table Failure Monitoring Procedure
-- ============================================

CREATE OR REPLACE PROCEDURE MONITOR_DYNAMIC_TABLE_FAILURES()
RETURNS STRING
LANGUAGE SQL
AS
$$
DECLARE
    FAILURE_COUNT INTEGER;
BEGIN

    -- Check for failed dynamic table refreshes
    SELECT COUNT(*)
    INTO :FAILURE_COUNT
    FROM SNOWFLAKE.ACCOUNT_USAGE.DYNAMIC_TABLE_REFRESH_HISTORY
    WHERE STATE = 'FAILED'
      AND DATA_TIMESTAMP >= DATEADD(HOUR, -2, CURRENT_TIMESTAMP());

    -- Send alert if failures exist
    IF (FAILURE_COUNT > 0) THEN

        CALL SYSTEM$SEND_EMAIL(
            'EMAIL_NOTIFICATION_INTEGRATION',
            'alerts@company.com',
            'Dynamic Table Refresh Failure Detected',
            'One or more dynamic table refreshes have failed in the last 2 hours.'
        );

        RETURN 'Failure alert email sent';

    ELSE

        RETURN 'No dynamic table failures detected';

    END IF;

END;
$$;
