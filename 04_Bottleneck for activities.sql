CASE WHEN KPI("OM_Metric_SalesOrderItemActivities_AVG__ImpactOnThroughputTime") <= 0 THEN NULL ELSE ( (CASE WHEN COUNT_TABLE(CASE_TABLE()) / GLOBAL(COUNT_TABLE(CASE_TABLE())) < 0.6 THEN COUNT ( DISTINCT CASE WHEN CASE WHEN 'process start'='process start' AND 'process end'='process end' THEN CALC_THROUGHPUT (
  CASE_START TO CASE_END ,
  REMAP_TIMESTAMPS ( TIMESTAMP_COLUMN ( ) , DAYS ) )
WHEN 'process start'='process start' THEN CALC_THROUGHPUT (
  CASE_START TO LAST_OCCURRENCE [ 'process end' ] ,
  REMAP_TIMESTAMPS ( TIMESTAMP_COLUMN ( ) , DAYS ) )
WHEN 'process end'='process end' THEN CALC_THROUGHPUT (
  FIRST_OCCURRENCE [ 'process start'] TO CASE_END,
  REMAP_TIMESTAMPS ( TIMESTAMP_COLUMN ( ) , DAYS ) )
ELSE CALC_THROUGHPUT (
  FIRST_OCCURRENCE [ 'process start'] TO LAST_OCCURRENCE [ 'process end' ] ,
  REMAP_TIMESTAMPS ( TIMESTAMP_COLUMN ( ) , DAYS ) )
END <= (PU_MEDIAN(CONSTANT(),
  CALC_THROUGHPUT(
  FIRST_OCCURRENCE['process start'] TO LAST_OCCURRENCE['process end'],
  REMAP_TIMESTAMPS(el__SalesOrderItemActivities.TIMESTAMP,
  DAYS),
  CASE WHEN 'process start' = 'process start' AND INDEX_ACTIVITY_ORDER(el__SalesOrderItemActivities.ACTIVITY) = 1 THEN 'process start'
    WHEN 'process end' = 'process end' AND INDEX_ACTIVITY_ORDER_REVERSE(el__SalesOrderItemActivities.ACTIVITY) = 1 THEN 'process end'
    ELSE el__SalesOrderItemActivities.ACTIVITY END
  ) )
) THEN CASE_ID_COLUMN() END ) / GLOBAL ( COUNT (
  DISTINCT CASE WHEN CASE
WHEN 'process start'='process start' AND 'process end'='process end' THEN CALC_THROUGHPUT (
  CASE_START TO CASE_END ,
  REMAP_TIMESTAMPS ( TIMESTAMP_COLUMN ( ) , DAYS ) )
WHEN 'process start'='process start' THEN CALC_THROUGHPUT (
  CASE_START TO LAST_OCCURRENCE [ 'process end' ] ,
  REMAP_TIMESTAMPS ( TIMESTAMP_COLUMN ( ) , DAYS ) )
WHEN 'process end'='process end' THEN CALC_THROUGHPUT (
  FIRST_OCCURRENCE [ 'process start'] TO CASE_END,
  REMAP_TIMESTAMPS ( TIMESTAMP_COLUMN ( ) , DAYS ) )
ELSE CALC_THROUGHPUT (
  FIRST_OCCURRENCE [ 'process start'] TO LAST_OCCURRENCE [ 'process end' ] ,
  REMAP_TIMESTAMPS ( TIMESTAMP_COLUMN ( ) , DAYS ) )
END <= (PU_MEDIAN(CONSTANT(),
  CALC_THROUGHPUT(
  FIRST_OCCURRENCE['process start'] TO LAST_OCCURRENCE['process end'],
  REMAP_TIMESTAMPS(el__SalesOrderItemActivities.TIMESTAMP,
  DAYS),
  CASE WHEN 'process start' = 'process start' AND INDEX_ACTIVITY_ORDER(el__SalesOrderItemActivities.ACTIVITY) = 1 THEN 'process start'
    WHEN 'process end' = 'process end' AND INDEX_ACTIVITY_ORDER_REVERSE(el__SalesOrderItemActivities.ACTIVITY) = 1 THEN 'process end'
    ELSE el__SalesOrderItemActivities.ACTIVITY END
  ) )
)  THEN CASE_ID_COLUMN() END ) ) - COUNT ( DISTINCT CASE WHEN CASE WHEN 'process start'='process start' AND 'process end'='process end' THEN CALC_THROUGHPUT (
  CASE_START TO CASE_END ,
  REMAP_TIMESTAMPS ( TIMESTAMP_COLUMN ( ) , DAYS ) )
WHEN 'process start'='process start' THEN CALC_THROUGHPUT (
  CASE_START TO LAST_OCCURRENCE [ 'process end' ] ,
  REMAP_TIMESTAMPS ( TIMESTAMP_COLUMN ( ) , DAYS ) )
WHEN 'process end'='process end' THEN CALC_THROUGHPUT (
  FIRST_OCCURRENCE [ 'process start'] TO CASE_END,
  REMAP_TIMESTAMPS ( TIMESTAMP_COLUMN ( ) , DAYS ) )
ELSE CALC_THROUGHPUT (
  FIRST_OCCURRENCE [ 'process start'] TO LAST_OCCURRENCE [ 'process end' ] ,
  REMAP_TIMESTAMPS ( TIMESTAMP_COLUMN ( ) , DAYS ) )
END > (PU_MEDIAN(CONSTANT(),
  CALC_THROUGHPUT(
  FIRST_OCCURRENCE['process start'] TO LAST_OCCURRENCE['process end'],
  REMAP_TIMESTAMPS(el__SalesOrderItemActivities.TIMESTAMP,
  DAYS),
  CASE WHEN 'process start' = 'process start' AND INDEX_ACTIVITY_ORDER(el__SalesOrderItemActivities.ACTIVITY) = 1 THEN 'process start'
    WHEN 'process end' = 'process end' AND INDEX_ACTIVITY_ORDER_REVERSE(el__SalesOrderItemActivities.ACTIVITY) = 1 THEN 'process end'
    ELSE el__SalesOrderItemActivities.ACTIVITY END
  ) )
)  THEN CASE_ID_COLUMN() END ) / GLOBAL (
  COUNT (
    DISTINCT CASE WHEN CASE
WHEN 'process start'='process start' AND 'process end'='process end' THEN CALC_THROUGHPUT (
  CASE_START TO CASE_END ,
  REMAP_TIMESTAMPS ( TIMESTAMP_COLUMN ( ) , DAYS ) )
WHEN 'process start'='process start' THEN CALC_THROUGHPUT (
  CASE_START TO LAST_OCCURRENCE [ 'process end' ] ,
  REMAP_TIMESTAMPS ( TIMESTAMP_COLUMN ( ) , DAYS ) )
WHEN 'process end'='process end' THEN CALC_THROUGHPUT (
  FIRST_OCCURRENCE [ 'process start'] TO CASE_END,
  REMAP_TIMESTAMPS ( TIMESTAMP_COLUMN ( ) , DAYS ) )
ELSE CALC_THROUGHPUT (
  FIRST_OCCURRENCE [ 'process start'] TO LAST_OCCURRENCE [ 'process end' ] ,
  REMAP_TIMESTAMPS ( TIMESTAMP_COLUMN ( ) , DAYS ) )
END > (PU_MEDIAN(CONSTANT(),
  CALC_THROUGHPUT(
  FIRST_OCCURRENCE['process start'] TO LAST_OCCURRENCE['process end'],
  REMAP_TIMESTAMPS(el__SalesOrderItemActivities.TIMESTAMP,
  DAYS),
  CASE WHEN 'process start' = 'process start' AND INDEX_ACTIVITY_ORDER(el__SalesOrderItemActivities.ACTIVITY) = 1 THEN 'process start'
    WHEN 'process end' = 'process end' AND INDEX_ACTIVITY_ORDER_REVERSE(el__SalesOrderItemActivities.ACTIVITY) = 1 THEN 'process end'
    ELSE el__SalesOrderItemActivities.ACTIVITY END
  ) )
)  THEN CASE_ID_COLUMN() END ) ) ELSE NULL END)*-1)  END




KPI("OM_Metric_SalesOrderItemActivities_AVG__ImpactOnThroughputTime") :  

