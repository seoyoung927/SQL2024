// https://school.programmers.co.kr/learn/courses/30/lessons/131117?language=oracle
select
    fp.product_id as PRODUCT_ID,
    fp.product_name as PRODUCT_NAME,
    fp.price*sum(fo.amount) as TOTAL_SALES
from food_product fp
inner join food_order fo
on fp.product_id = fo.product_id
where to_char(fo.PRODUCE_DATE, 'YYYY-MM') = '2022-05'
group by fp.product_id, fp.product_name, fp.price
order by TOTAL_SALES desc, PRODUCT_ID asc;