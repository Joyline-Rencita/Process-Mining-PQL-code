Select the Category : 
<%= 
    Filter_Category == '"_APX_WDCRP_CASES"."CUST_MARKET"' 
        ? 'Market' 
    : Filter_Category == '"_APX_WDCRP_CASES"."FACTORY"' 
        ? 'Factory' 
    : Filter_Category == '"_APX_WDCRP_CASES"."DELIVERY_COMPANY"' 
        ? 'Delivery Company' 
    : Filter_Category == '"_APX_WDCRP_CASES"."WAREHOUSE_TYPE"'  
        ? 'Warehouse Type'  
    : ''    
%>
