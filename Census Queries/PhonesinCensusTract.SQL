select '407203' as tract, count(p.dwid) as people from person_svny p
join phones_svny h
on h.dwid = p.dwid
left join district_svny d
on d.dwid = p.dwid
where p.resaddrcensustract = 407203
and d.countyname LIKE 'NASSAU'
and (h.likely_cell_phone is not null OR h.likely_land_phone is not null)

UNION

select '406701' as tract, count(p.dwid) as people from person_svny p
join phones_svny h
on h.dwid = p.dwid
left join district_svny d
on d.dwid = p.dwid
where p.resaddrcensustract = 406701
and d.countyname LIKE 'NASSAU'
and (h.likely_cell_phone is not null OR h.likely_land_phone is not null)
