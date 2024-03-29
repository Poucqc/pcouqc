-- 코드를 입력하세요
SELECT u.USER_ID, u.NICKNAME, sum(b.PRICE)
from USED_GOODS_BOARD b left join USED_GOODS_USER u on b.WRITER_ID = u.USER_ID
where b.STATUS ='done' 
group by u.USER_ID
having sum(b.PRICE)>= 700000
order by sum(b.PRICE)