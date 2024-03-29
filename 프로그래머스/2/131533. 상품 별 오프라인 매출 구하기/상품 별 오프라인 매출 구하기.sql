-- 코드를 입력하세요
SELECT product_code, sum(price*ifnull(sales_amount, 0))
from PRODUCT p left join OFFLINE_SALE o on p.PRODUCT_ID=o.PRODUCT_ID
group by 1
order by 2 desc ,1 asc