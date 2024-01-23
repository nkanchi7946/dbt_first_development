select
    customer_id as unique_field,
    count(*) as n_records

from {{ ref('stg_customer') }} 
where unique_field is not null
group by unique_field
having count(*) > 1