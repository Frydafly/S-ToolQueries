select p.partyaffiliation, count(distinct p.dwid) from person_svny p
inner join district_svny d
on p.dwid = d.dwid
where d.countyname LIKE 'DUTCHESS'
and d.township LIKE 'CITY POUGHKEEPSIE'
group by p.partyaffiliation
