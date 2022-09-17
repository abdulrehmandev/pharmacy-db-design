select COrder.order_id, Item.item_id, Customer.customer_id, Customer.name, order_status
from COrder 
join Customer on COrder.customer_id = Customer.customer_id 
join Item on Item.item_id = COrder.item_id order by order_id;


select order_id, name, price as unit_price, order_status 
from COrder
join Item 
on COrder.item_id = Item.item_id;


select Admin.admin_id, report_id, report.name, issue_date
from Report
join Admin 
on Admin.admin_id = Report.admin_id;


select Customer.customer_id, name, address, order_id, item_id, order_status
from Customer
join COrder 
on COrder.customer_id = COrder.customer_id;
