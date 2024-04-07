-- 코드를 입력하세요
SELECT b.TITLE, b.BOARD_ID, r.REPLY_ID, r.WRITER_ID, r.CONTENTS, 
       date_format(r.CREATED_DATE, '%Y-%m-%d') CREATED_DATE
from USED_GOODS_BOARD b
inner join USED_GOODS_REPLY r 
on b.BOARD_ID=r.BOARD_ID
where date_format(b.CREATED_DATE, '%Y%m') = '202210'
order by r.CREATED_DATE, b.TITLE