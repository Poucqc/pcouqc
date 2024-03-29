-- 코드를 입력하세요
select cago, count(1) ct
from
(select PRODUCT_ID, substr(PRODUCT_CODE, 1, 2) cago
from PRODUCT )a
group by 1
order by 1