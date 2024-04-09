with recursive allhours as
(
select 0 as hour
union all
select hour + 1 from allhours
where hour < 23
)

select a.hour, count(o.ANIMAL_ID)
from allhours a 
left join ANIMAL_OUTS o
on a.hour = hour(o.DATETIME)
group by 1
order by 1