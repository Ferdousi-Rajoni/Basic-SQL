select * from sales;
select * from people;

select s.SaleDate, s.amount, p.Salesperson
 from sales s
 join people p on p.SPID=s.SPID;
 
 select s.SaleDate, s.Amount, pr.product
	from sales s
left join products pr on pr.PID=s.PID;    

select s.SaleDate, s.amount, p.Salesperson, pr.Product,p.team
 from sales s
 join people p on p.SPID=s.SPID
 join products pr on pr.PID=s.PID
 where s.amount <5000 
 and p.team="Delish"
 order by amount; 
 
 
 select s.SaleDate, s.amount, p.Salesperson, pr .Product,p.Team,g.geo
 from sales s
 join people p on p.SPID=s.SPID
 join products pr on pr.PID=s.PID
 join geo g on g.GeoID=s.GeoID
 where s.amount <5000 
 and p.team="Delish"
 and g.geo in('India')
 order by amount; 
 
select GeoID, sum(amount), avg(Amount), sum(Boxes)
	from sales
    group by GeoID;
    
select g.geo, sum(amount), avg(Amount), sum(Boxes)
	from sales s
    join geo g on s.GeoID = g.GeoID
    group by g.Geo;  
    
select pr.Category, p.team, sum(Boxes),sum(Amount)
 from sales s
 join people p on p.SPID=s.SPID
 join products pr on pr.PID=s.PID
 group by pr.Category, p.Team
 order by pr.Category, p.Team;
 
 select pr.product, sum(s.amount) as 'Total Amount'
	from sales s
    join products pr on pr.PID=s.PID
    group by pr.Product
    order by 'Total amount' desc
    limit 10;