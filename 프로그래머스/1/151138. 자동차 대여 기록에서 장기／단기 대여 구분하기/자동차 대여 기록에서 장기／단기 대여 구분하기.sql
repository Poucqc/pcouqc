-- 코드를 입력하세요
SELECT HISTORY_ID,
CAR_ID,
date_format(START_DATE, '%Y-%m-%d') START_DATE, 
date_format(END_DATE, '%Y-%m-%d') END_DATE,
if(datediff(end_date, start_date)>=29, '장기 대여', '단기 대여') RENT_TYPE
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
where START_DATE > '2022-08-31' and START_DATE < '2022-10-01'
order by HISTORY_ID desc