
with payments as (

    select
        id as payment_id,
        orderid as order_id,
        paymentmethod as payment_method,
        status,
        -- amount is stored in cents, convert to dollars
        {{ cents_to_dollars('amount', 5) }} as amount, 
        created

    from {{ source('stripe', 'payment') }}

)
select *
from payments
