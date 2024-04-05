-- 코드를 입력하세요
select month(START_DATE), CAR_ID, count(1) RECORDS
from CAR_RENTAL_COMPANY_RENTAL_HISTORY 
where CAR_ID
in (
select CAR_ID
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
where month(START_DATE) between 8 and 10
group by CAR_ID
having count(1) >= 5
)
and month(START_DATE) between 8 and 10
group by month(START_DATE), CAR_ID
order by month(START_DATE), CAR_ID desc

