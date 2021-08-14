
select status, 
        sum(amount) as total_revenue_amount
from {{ ref('stg_payments') }}
where status = 'success'
group by status 
