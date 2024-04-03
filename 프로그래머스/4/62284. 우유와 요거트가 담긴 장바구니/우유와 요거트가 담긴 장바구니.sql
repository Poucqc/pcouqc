-- 코드를 입력하세요
SELECT CART_ID
from CART_PRODUCTS 
group by CART_ID
having group_concat(NAME) like '%Yogurt%' and group_concat(NAME) like '%Milk%'