// oracle
// https://school.programmers.co.kr/learn/courses/30/lessons/59042?language=oracle
select
    ao.animal_id as ANIMAL_ID,
    ao.name as NAME
from animal_outs ao
left join animal_ins ai
on ao.animal_id = ai.animal_id
where ai.animal_id is null
order by ao.animal_id;