prompt Question5-whan


select u.usr,t.tdate,t.text
from users u,tweets t,follows f,retweets r
where r.usr=f.flwer
and r.writer=f.flwee
and t.writer=r.writer
and t.tdate=r.tdate
and u.usr=t.writer
group by u.usr,t.tdate,t.text
having count(*)>2
;
