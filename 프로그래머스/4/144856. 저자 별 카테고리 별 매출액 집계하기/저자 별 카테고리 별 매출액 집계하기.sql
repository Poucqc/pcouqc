select aa.AUTHOR_ID, au.AUTHOR_NAME, aa.CATEGORY, aa.TOTAL_SALES
from
(select  b.AUTHOR_ID, b.CATEGORY, sum(s.SALES*b.PRICE) TOTAL_SALES
from BOOK b join BOOK_SALES s on b.BOOK_ID=s.BOOK_ID
where s.SALES_DATE like '2022-01-%'
group by b.CATEGORY, b.AUTHOR_ID) aa 
join AUTHOR au on aa.AUTHOR_ID=au.AUTHOR_ID
order by aa.AUTHOR_ID asc, aa.CATEGORY desc