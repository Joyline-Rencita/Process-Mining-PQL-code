GO TO KM ->  Click on Eventlog  ->  Choose Sales Order Activity -> Edit the code

REMAP_VALUES (

"el_celonis_SalesOrder"."ACTIVITY" ,

[ 'e_celonis_CreateSalesOrderHeader' , 'Create Sales Order Header' ] ,
[ 'e_celonis_SetDeliveryBlock' , 'Set Delivery Block' ] ,
[ 'e_celonis_SetCreditBlock' , 'Set Credit Block' ] ,
[ 'e_celonis_SetBillingBlock' , 'Set Billing Block' ] ,
[ 'e_celonis_CreateSalesOrderItem' , 'Create Sales Order Item' ] ,
[ 'e_celonis_ApproveSalesOrder' , 'Approve Sales Order' ] ,
[ 'e_celonis_ReleaseCreditBlock' , 'Release Credit Block' ],
[ 'e_celonis_ChangeSalesOrder', 'Change Sales Order']

)
