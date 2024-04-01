-- 코드를 입력하세요
SELECT o.ANIMAL_ID, o.NAME
from ANIMAL_OUTS o left join ANIMAL_INS i on o.ANIMAL_ID=i.ANIMAL_ID
where o.DATETIME is not null
      and i.DATETIME is null
order by o.ANIMAL_ID