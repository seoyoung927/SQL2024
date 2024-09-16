// https://school.programmers.co.kr/learn/courses/30/lessons/131117
select
    fp.product_id as PRODUCT_ID,
    fp.product_name as PRODUCT_NAME,
    fp.price*sum(fo.amount) as TOTAL_SALES
from food_product fp
inner join food_order fo
on fp.product_id = fo.product_id
where date_format(fo.PRODUCE_DATE, '%Y-%M') = '2022-MAY'
group by fp.product_id, fp.product_name
order by TOTAL_SALES desc, PRODUCT_ID asc;