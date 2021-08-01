
with orders as (

    select *
    from {{ ref('stg_orders') }}

)
, order_payments as (

    select 
        order_id, 
        sum(amount) as amount
    from {{ ref('stg_payments') }} 
    where status = 'success'
    group by order_id

)
select 
    o.order_id, 
    o.customer_id, 
    o.status,
    o.order_date,
    coalesce(p.amount, 0) as amount

from orders as o 
left join order_payments as p 
    on o.order_id = p.order_id

