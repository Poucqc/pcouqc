select HOUR(datetime) HOUR, count(1)
from ANIMAL_OUTS 
where HOUR(datetime) between 9 and 19
group by 1
order by 1