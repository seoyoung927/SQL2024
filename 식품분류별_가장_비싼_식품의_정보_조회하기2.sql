with max_price as (
    select category, max(price) as price
    from food_product
    group by category
)

select 
    f.category as category, 
    f.price as max_price, 
    f.product_name as product_name
from food_product f
left join max_price m
on f.category=m.category
where f.category in ('과자', '국', '김치', '식용유')
and f.price=m.price
order by f.price desc;
