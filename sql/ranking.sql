-- TODO
-- delete cascade!!
-- team view (group by, including ranking of teams in group)


select *
from   games
where  tingler_time < date '2010-06-13'
;

select u.name, g.short_desc, g.tingler_time, g.home_score, g.away_score, b.home_score, b.away_score, b.points
from   games g
  inner join bets b
          on g.id = b.game_id
  inner join users u
          on b.user_id = u.id
where  g.tingler_time < date '2010-06-13'
and    b.home_score is not null 
and    b.away_score is not null
order by g.tingler_time, u.name
;

select u.name, g.tingler_time, b.points
from   games g
  inner join bets b
          on g.id = b.game_id
  inner join users u
          on b.user_id = u.id
where  g.tingler_time < date '2010-06-13'
and    b.home_score is not null 
and    b.away_score is not null
order by g.tingler_time, u.name
;

select distinct g.tingler_time
from   games g
where  g.tingler_time < date '2010-06-13'
order by g.tingler_time
;

select *
from   users
--where  id in (1,12)
;



SELECT v1.name, v1.votes, COUNT(v2.votes) AS Rank
FROM votes v1
JOIN votes v2 ON v1.votes < v2.votes OR (v1.votes=v2.votes and v1.name = v2.name)
GROUP BY v1.name, v1.votes
ORDER BY v1.votes DESC, v1.name DESC
; 
