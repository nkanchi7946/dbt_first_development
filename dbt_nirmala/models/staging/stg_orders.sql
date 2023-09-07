
   with orders as(
    select user_id as customer_id,
    min(order_date) as first_order_date,max(order_date) as most_recent_order_date,count(id) as number_of_orders
    from {{ source('raw','orders')}}
    group by 1
   )

   select * from orders