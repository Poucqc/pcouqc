select date_format(SALES_DATE, '%Y-%m-%d'), PRODUCT_ID, USER_ID, SALES_AMOUNT
from ONLINE_SALE
where DATE_FORMAT(SALES_DATE, '%Y%m') = '202203'
union all
select date_format(SALES_DATE, '%Y-%m-%d'), PRODUCT_ID, null, SALES_AMOUNT
from OFFLINE_SALE
where DATE_FORMAT(SALES_DATE, '%Y%m') = '202203'
order by 1,2,3