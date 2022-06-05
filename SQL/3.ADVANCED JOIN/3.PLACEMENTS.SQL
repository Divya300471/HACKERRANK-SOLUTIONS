/*You are given three tables: Students, Friends and Packages. 
 Students contains two columns: ID and Name. Friends contains two columns:
 ID and Friend_ID (ID of the ONLY best friend).
 Packages contains two columns: ID and Salary (offered salary in $ thousands
 per month).
 Write a query to output the names of those students whose best friends got
 offered a higher salary than them. Names must be ordered by the salary amount
 offered to the best friends. It is guaranteed that no two students got same 
 salary offer.*/

select temp1.sn
from (select S.ID si,S.Name sn,P.Salary ps from Students S join Packages P on
S.ID=P.ID) temp1 join (select FF.ID fi,FF.Friend_ID fd,PP.Salary pps from 
Friends FF join Packages PP on FF.Friend_ID=pp.ID) temp2 on temp1.si=temp2.fi
and temp1.ps<temp2.pps order by temp2.pps asc;

