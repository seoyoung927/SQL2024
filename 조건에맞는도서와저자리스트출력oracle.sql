// ORACLE
// https://school.programmers.co.kr/learn/courses/30/lessons/144854?language=oracle
select
    b.book_id as BOOK_ID,
    a.author_name as AUTHOR_NAME, 
    to_char(b.published_date, 'YYYY-MM-DD') as PUBLISHED_DATE
from book b
inner join author a
on b.author_id = a.author_id
where b.category = '경제'
order by PUBLISHED_DATE asc;