SELECT 
  B.CATEGORY AS CATEGORY,
  SUM(BS.SALES) AS TOTAL_SALES
FROM BOOK B
INNER JOIN BOOK_SALES BS
ON B.BOOK_ID = BS.BOOK_ID
WHERE date_format(bs.sales_date,'%Y-%m') = '2022-01'
GROUP BY CATEGORY
ORDER BY CATEGORY ASC;
