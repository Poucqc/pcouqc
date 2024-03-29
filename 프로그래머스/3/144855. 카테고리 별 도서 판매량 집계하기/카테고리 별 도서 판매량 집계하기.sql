-- 코드를 입력하세요
SELECT b.CATEGORY, sum(s.SALES)
from BOOK b left join BOOK_SALES s on b.BOOK_ID=s.BOOK_ID
where date_format(SALES_DATE, '%y%m') = '2201'
group by 1
order by 1 asc