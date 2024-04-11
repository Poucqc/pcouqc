select c.CAR_ID, c.CAR_TYPE, round(30*c.DAILY_FEE*((100-p.DISCOUNT_RATE)/100)) as FEE
from CAR_RENTAL_COMPANY_CAR c
left join CAR_RENTAL_COMPANY_RENTAL_HISTORY h
on c.CAR_ID = h.CAR_ID
left join CAR_RENTAL_COMPANY_DISCOUNT_PLAN p
on c.CAR_TYPE = p.CAR_TYPE
where c.CAR_ID not in (select CAR_ID
                      from CAR_RENTAL_COMPANY_RENTAL_HISTORY 
                      where ('2022-11-01 00:00:00' between START_DATE and END_DATE)
                       or ('2022-11-30 23:59:59' between START_DATE and END_DATE)
                      )
      and c.CAR_TYPE in ('세단', 'SUV')
      and p.DURATION_TYPE in ('30일 이상')
group by c.CAR_ID
having FEE between 500000 and 2000000
order by 3 desc, 2, 1 desc