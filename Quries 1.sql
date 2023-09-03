select * from sales;
select SaleDate, Amount, Customers from sales;

select Amount, Customers, GeoID from sales;

select  SaleDate, Amount, Boxes, Amount/Boxes as 'Amount per box' from sales;
select * from sales
where amount > 10000
order by amount desc;


select * from sales
where GeoID='g1'
order by PID, amount desc;

select * from sales
where amount >10000 and SaleDate >= '2022-01-01';


select SaleDate, amount from sales
where amount > 10000 and year(SaleDate)=2022
order by amount desc;


select * from sales
where boxes >0 and boxes <=50
order by boxes;


select * from sales
where boxes between 0 and 50;

select SaleDate, Amount, Boxes, weekday(SaleDate) as "Day of week"
from sales
where  weekday(SaleDate)=4;

select * from people
where team ='Delish' or 'Jucies';


select * from people
where team in ('Delish','Jucies');


select * from people
where Salesperson like 'B%';


select * from people
where Salesperson like 'B%';

select * from people
where Salesperson like '%B%';


select SaleDate, Amount,
	case	 when Amount <1000 then 'Under 1k'
			when Amount < 5000 then 'Under 5k'
            when Amount <10000 then 'Under 10k'
        else '10k or more'
        end as 'Amount Category'
from sales;

