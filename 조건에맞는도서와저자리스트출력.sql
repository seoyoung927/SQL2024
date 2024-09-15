// MYSQL
// https://school.programmers.co.kr/learn/courses/30/lessons/144854?language=mysql
select
    b.book_id as BOOK_ID,
    a.author_name as AUTHOR_NAME, 
    date_format(b.published_date, 'YYYY-MM-DD') as PUBLISHED_DATE
from book b
inner join author a
on b.author_id = a.author_id
where b.category = '경제'
order by PUBLISHED_DATE asc;