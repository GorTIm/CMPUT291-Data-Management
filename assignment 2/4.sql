prompt Question4-whan

select usr
from users
where 1<(select count(t.writer)
from tweets t,mentions m
where t.writer=m.writer
and term like 'edmonton%'
and t.writer=usr)

intersect

select usr
from users
where not exists(select flwee
from follows
where usr=flwee)
;

