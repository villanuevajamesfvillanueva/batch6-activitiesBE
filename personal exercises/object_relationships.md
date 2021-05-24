## belongs to
    - child object
    - single relationship => .customer



## has many
    - multiple relationships => .orders
## has many through

Starbucks Domain:
    - customer: has many orders, has many baristas through the orders
    - order: belong to a customer, belong to a barista
    - barista: has many orders, has many customrs through the orders