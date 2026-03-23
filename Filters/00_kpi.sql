AVG(
    DATEDIFF(
        HH,

        CASE
            WHEN PU_LAST(
                    DOMAIN_TABLE("ACTIVITIES_TABLE_HUBSPOT"."EVENT_TIME"),
                    "ACTIVITIES_TABLE_HUBSPOT"."ACTIVITY_NAME"
                 ) = 'Proposal Stage'
            THEN "ACTIVITIES_TABLE_HUBSPOT"."EVENT_TIME"
        END,

        CASE
            WHEN PU_LAST(
                    DOMAIN_TABLE("ACTIVITIES_TABLE_HUBSPOT"."EVENT_TIME"),
                    "ACTIVITIES_TABLE_HUBSPOT"."ACTIVITY_NAME"
                 ) = 'Proposal Stage'
                 AND ACTIVITY_LEAD(
                        "ACTIVITIES_TABLE_HUBSPOT"."ACTIVITY_NAME",
                        1
                     ) = 'Proposal Submitted'
            THEN ACTIVITY_LEAD(
                    "ACTIVITIES_TABLE_HUBSPOT"."EVENT_TIME",
                    1
                 )
        END
    )
)
