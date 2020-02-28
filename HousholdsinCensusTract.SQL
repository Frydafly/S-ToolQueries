select count(distinct p.householdid1) as doors from person_svny p
join phones_svny h
on h.dwid = p.dwid
left join district_svny d
on d.dwid = p.dwid
where p.resaddrcensustract = 100
and d.countyname LIKE 'ORANGE'
