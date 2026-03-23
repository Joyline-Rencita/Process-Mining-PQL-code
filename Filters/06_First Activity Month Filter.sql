FILTER
    TO_STRING(
        ROUND_MONTH(
            PU_FIRST(
                "JIRA_ISSUES",
                "_CEL_JIRA_ACTIVITIES"."EVENTTIME",
                "_CEL_JIRA_ACTIVITIES"."ACTIVITY_DE" = 'Fehlende Ware'
            )
        ),
        FORMAT('%Y-%m')
    ) = ${monitor_timefilter}
