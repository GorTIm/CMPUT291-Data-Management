prompt Question2-whan

select distinct b.flwer
from users,follows a, follows b
where users.name='john doe'
and a.flwer=usr
and a.flwee=b.flwee
and (CURRENT_DATE-a.start_date)>180
;

