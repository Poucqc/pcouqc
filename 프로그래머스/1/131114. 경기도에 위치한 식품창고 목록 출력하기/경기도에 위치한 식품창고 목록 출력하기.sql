-- 코드를 입력하세요
SELECT WAREHOUSE_ID, WAREHOUSE_NAME , ADDRESS ,ifnull(FREEZER_YN, 'N') FREEZER_YN
from FOOD_WAREHOUSE
where WAREHOUSE_NAME like '%경기%'