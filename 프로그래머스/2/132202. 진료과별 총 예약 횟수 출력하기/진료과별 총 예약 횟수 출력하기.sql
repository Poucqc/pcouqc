-- 코드를 입력하세요
SELECT MCDP_CD "진료과코드", count(1) "5월예약건수"
from APPOINTMENT
where date_format(APNT_YMD, '%y%m') = 2205
group by MCDP_CD
order by 2 , 1