prompt Question3-whan

select e.usr,e.name
from users e
where  not exists(
select d.flwee 
from users a,follows)

intersect

(select c.flwee
from users b,follows c
where b.name='john doe'
and b.usr=c.flwer)
;
