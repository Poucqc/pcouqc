-- 코드를 입력하세요
SELECT INGREDIENT_TYPE, sum(TOTAL_ORDER)
from FIRST_HALF f inner join ICECREAM_INFO i on f.FLAVOR = i.FLAVOR
group by 1
order by 2 asc