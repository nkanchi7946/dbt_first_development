select 0 as payment_id,
1 as order_id,
'credit_card' as payment_method,
{{ cents_to_dollar(column_name=2000,decimal_place=2) }}