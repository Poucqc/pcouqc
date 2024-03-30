-- 코드를 입력하세요
SELECT p.PRODUCT_ID, p.PRODUCT_NAME, sum(o.AMOUNT)*p.PRICE
from FOOD_PRODUCT p inner join FOOD_ORDER o on p.PRODUCT_ID=o.PRODUCT_ID
where date_format(o.PRODUCE_DATE, '%Y%m')='202205'
group by 1
order by 3 desc, 1 asc