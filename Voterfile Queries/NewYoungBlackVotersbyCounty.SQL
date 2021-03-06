select d.countyname as 'County', count(case when p.voterstatusdate >= '2019-01-01' then 1 else 0 end) as 'New Voters'
from district_svny d
inner join person_svny p
on d.DWID = p.DWID
where p.race = 'black'
and d.countyname is not null
and p.voterstatus LIKE 'active'
and p.age <= 25                                                            
group by d.countyname
order by 'Total People' desc
