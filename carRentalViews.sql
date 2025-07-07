USE carRental;
GO
--drop view active_client;
--They are clients that reserve more that 3 times
create view active_client(cID,cName) as
(
	select p.pID,pName
	from person as p join reserve as r on (p.pID=r.pID)
	group by p.pID,p.pName
	having COUNT(*)>3
);