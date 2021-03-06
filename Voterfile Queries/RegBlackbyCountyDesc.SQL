select d.countyname as 'County', count(distinct p.DWID) as 'Total People'
from district_svny d
inner join person_svny p
on d.DWID = p.DWID
where p.race = 'black'
and d.countyname is not null
and p.voterstatus in ('inactive','active')
group by d.countyname
order by 'Total People' desc
