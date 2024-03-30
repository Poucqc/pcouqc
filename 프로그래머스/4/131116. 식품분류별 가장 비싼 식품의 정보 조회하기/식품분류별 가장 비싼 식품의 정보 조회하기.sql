-- 코드를 입력하세요
SELECT CATEGORY, PRICE ,PRODUCT_NAME
from FOOD_PRODUCT 
where CATEGORY in ('과자','국','김치','식용유') 
      and (CATEGORY,PRICE) in (select CATEGORY, max(PRICE) from FOOD_PRODUCT a GROUP BY a.CATEGORY)
      group by CATEGORY
      order by PRICE desc
