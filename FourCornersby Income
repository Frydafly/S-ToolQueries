select a.catalistmodel_income_bin as 'income',
count (case
        when v.e2016gvm is not null then v.e2016gvm end) as voted,
count(case
        when v.e2016gvm is null then 1 end) as notvoted
        from analytics_continuous_svny a
left join vote_history_svny v
on v.dwid = a.dwid
left join district_svny d
on d.dwid = v.dwid
where d.township = 'SAUGERTIES'
group by income
