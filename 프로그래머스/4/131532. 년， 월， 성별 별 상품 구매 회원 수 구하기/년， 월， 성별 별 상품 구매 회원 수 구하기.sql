-- 코드를 입력하세요
select year(o.SALES_DATE), month(o.SALES_DATE), u.GENDER,
count(distinct u.USER_ID)
from USER_INFO u join ONLINE_SALE o on u.USER_ID=o.USER_ID
where u.GENDER is not null
group by 1, 2, 3
