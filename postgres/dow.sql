select * from crosstab(
'select week, dow, sum(event)
from
(
  select dow, floor((day-dow)/7) as week, event
  from (
    select extract(dow from starts) as dow, extract(day from starts) as day, 1 event
    from events
    where starts >= ''2012-02-01''
    and starts < ''2012-03-01''
    union (
      select extract(dow from aday) as dow, extract(day from aday) as day, 0 event 
      from 
        (select date ''2012-02-01'' + inc as aday
         from (select * from generate_series(0,32) as inc) as x) as xx
      where aday < ''2012-03-01''
    )
  ) as i
) as ii
group by week, dow
order by week, dow;',
'select * from generate_series(0,6)')
as (
  week int,
  sun int, mon int, tue int, wed int, thu int, fri int, sat int)
order by week;
