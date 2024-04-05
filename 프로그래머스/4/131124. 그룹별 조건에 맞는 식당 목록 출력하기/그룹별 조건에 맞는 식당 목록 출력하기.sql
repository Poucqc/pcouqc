select p.MEMBER_NAME,
r.REVIEW_TEXT,
date_format(r.REVIEW_DATE, '%Y-%m-%d') REVIEW_DATE
from MEMBER_PROFILE p join REST_REVIEW r on p.MEMBER_ID=r.MEMBER_ID
where r.MEMBER_ID = (select MEMBER_ID
                    from REST_REVIEW 
                     group by MEMBER_ID 
                     order by count(REVIEW_ID) desc
                     limit 1
                    )
                    group by r.REVIEW_ID
                    order by r.REVIEW_DATE, r.REVIEW_TEXT