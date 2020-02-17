select r.race, count (case when v.e2016gvm is not null then v.e2016gvm end) as voted, count(case when v.e2016gvm is null then 1 end) as notvoted  from race_svny r
left join vote_history_svny v
on v.dwid = r.dwid
left join district_svny d
on d.dwid = v.dwid
where d.township = 'SAUGERTIES'
group by r.race
