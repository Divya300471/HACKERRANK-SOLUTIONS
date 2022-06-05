/*The total score of a hacker is the sum of their maximum scores for all of 
 the challenges. Write a query to print the hacker_id, name, and total score
 of the hackers ordered by the descending score. If more than one hacker
 achieved the same total score, then sort the result by ascending hacker_id.
 Exclude all hackers with a total score of from your result.*/

select h.hacker_id,h.name,sum(sscore)
from Hackers h inner join (select s.hacker_id,max(score) as sscore from
Submissions s group by s.hacker_id,s.challenge_id) st on 
h.hacker_id=st.hacker_id
group by h.hacker_id,h.name
having sum(sscore)>0
order by sum(sscore) desc,h.hacker_id asc;

