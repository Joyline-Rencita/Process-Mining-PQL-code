1. date range filter:
FILTER (
  "ACDOCA_AP_SUSPENSE"."AUGBL" IS NULL OR "ACDOCA_AP_SUSPENSE"."AUGDT" >  {d '<%=date_filter%>'}
  ) 
  AND  "ACDOCA_AP_SUSPENSE"."BUDAT" <=  {d '<%=date_filter%>'}

  
2. Component Filter Benchmarking in Analysis:
    FILTER <%=v_Dimension%> IN ('<%=v_Sub_Dimension_1%>')

3. Filter for concantenated columns:
   FILTER ${ (dimension_benchmark ==="companycode_cc" && "EKPO.BUKRS ||' - '|| EKPO.BUKRS_TEXT") } = '${benchmark_1}'
