
   with orders as(
    select O_CUSTKEY as customer_id,
    min(O_ORDERDATE) as first_order_date,max(O_ORDERDATE) as most_recent_order_date,count(customer_id) as number_of_orders
    from {{ source('raw','orders')}}
    group by 1
   )

   select * from orders