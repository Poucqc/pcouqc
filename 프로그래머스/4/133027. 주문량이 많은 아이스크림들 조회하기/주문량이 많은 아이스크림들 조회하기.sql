select a.FLAVOR
from 
(select FLAVOR, sum(TOTAL_ORDER) hs from FIRST_HALF group by FLAVOR) a 
join 
(select FLAVOR, sum(TOTAL_ORDER) js from JULY group by FLAVOR) b 
on a.FLAVOR=b.FLAVOR
group by a.FLAVOR
order by max(hs+js) desc
limit 3