with customers as (

   select * from  {{ ref('stg_customer') }}
),

orders as (

  select * from   {{ ref('stg_orders') }}

),

customer_orders as (

select customers.customer_id,
    customers.first_name,
    customers.Last_name,
    orders.first_order_date,
    orders.most_recent_order_date,
    coalesce(number_of_orders,0)as number_of_orders
from customers
left join orders using (customer_id)
)

select * from customer_orders