-- 코드를 입력하세요
SELECT a.APNT_NO, p.PT_NAME, a.PT_NO, a.MCDP_CD, d.DR_NAME, a.APNT_YMD
from PATIENT p left join APPOINTMENT a on p.PT_NO=a.PT_NO left join DOCTOR d on a.MDDR_ID=d.DR_ID
where a.MCDP_CD = 'CS' and date_format(a.APNT_YMD, '%Y%m%d') = '20220413' and a.APNT_CNCL_YMD is null
order by a.APNT_YMD asc