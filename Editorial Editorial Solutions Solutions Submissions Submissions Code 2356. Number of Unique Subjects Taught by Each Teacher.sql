
SELECT teacher_id , count(DISTINCT subject_id) as cnt
from Teacher
Group by teacher_id;
