
{{
    config ( alias = 'dbt_customer_table')
}}

with customers as (
select C_CUSTKEY as customer_id,C_NAME as name  from {{ source('raw','customer')}}
)
select * from customers
