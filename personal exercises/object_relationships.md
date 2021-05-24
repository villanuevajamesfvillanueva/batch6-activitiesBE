## belongs to
    - child object
    - single relationship => .customer
    - reader and writer for association
    - can it relate to different models, but only 1 instance of those models


## has many
    - multiple relationships => .orders
    - array that collects all the related objects
    - parent object


## has many through

Starbucks Domain:
    - customer: has many orders, has many baristas through the orders
    - order: belong to a customer, belong to a barista
    - barista: has many orders, has many customrs through the orders