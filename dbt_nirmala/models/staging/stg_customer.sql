with customers as (
select C_CUSTKEY as customer_id,C_NAME as name  from {{ source('raw','customers')}}
)
select * from customers
