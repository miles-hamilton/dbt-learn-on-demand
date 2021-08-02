{% docs order_status %}
	
One of the following values: 

| status         | definition                                       |
|----------------|--------------------------------------------------|
| placed         | Order placed, not yet shipped                    |
| shipped        | Order has been shipped, not yet been delivered   |
| completed      | Order has been received by customers             |
| return pending | Customer indicated they want to return this item |
| returned       | Item has been returned                           |

{% enddocs %}

{% docs payment_method %}
	
One of the following values: 

| payment_method        | definition                                       |
|-----------------------|--------------------------------------------------|
| bank_transfer         | Transfer from bank account                       |
| coupon                | Coupon - printed out or electronic               |
| credit_card           | Credit card                                      |
| gift_card             | Gift card                                        |

{% enddocs %}
