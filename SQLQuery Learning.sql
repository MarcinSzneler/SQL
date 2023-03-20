/* 
				Zadanie 1

select top 8 DepartmentID as Numer_Departamentu, Name as 'Nazwa departamentu'
from HumanResources.Department
order by Numer_Departamentu;
*/

/*
			    Zadanie 2 

select AddressID, AddressLine1 + ', ' + City + ' ' + PostalCode as Adres
from Person.Address
order by AddressID;

*/
/*
				Zadanie 3

select BusinessEntityID, DepartmentID
from HumanResources.EmployeeDepartmentHistory
where BusinessEntityID>=200 and (DepartmentID = 6 or DepartmentID = 4);

*/
/* 
				Zadanie 4

select BusinessEntityID, Rate, RateChangeDate
from HumanResources.EmployeePayHistory
where Rate between 60 and 100 and (RateChangeDate) >= '20090101';

*/
/* 
				Zadanie 5

select top 1 LocationID, Name, CostRate
from Production.Location
order by CostRate DESC;
*/
/* 
				Zadanie 6

select BusinessEntityID, cast(RateChangeDate as date) as 'Data zmiany', Rate, str(Rate, 7, 3)  as 'Sformatowana stawka'
from HumanResources.EmployeePayHistory;
*/
/* 
				Zadanie 7

select Name, ProductNumber, ListPrice, isnull(Color, 'no color') as Color
from Production.Product
where ListPrice between 100 and 200
order by ListPrice;

*/
/* 
				Zadanie 8

select round(SalesYTD,2) as SalesYTD, str(SalesYTD/1000000,5,2) + ' mln' as SalesYTD_podzielona
from Sales.SalesPerson;

*/
/*
			  Zadanie 9

select max(SalesQuota) as Maksymalna, min(SalesQuota) as Minimalna, avg(isnull(SalesQuota,0)) as "Œrednia ze wszystkich"
from Sales.SalesPerson;

*/
/*
			Zadanie 10

select MaritalStatus, Gender, sum(VacationHours-SickLeaveHours) as Roznica
from HumanResources.Employee
group by MaritalStatus, Gender

*/
/* 
			Zadanie 11

select BusinessEntityID, JobTitle, OrganizationLevel,
case when OrganizationLevel in (1,2) then 'Wiceprezesi i Managerowie'
when OrganizationLevel>2 then 'Pracownicy'
when OrganizationLevel is null then 'Szef wszystkich szefów' 
end as Stanowiska
from HumanResources.Employee
order by OrganizationLevel;

*/
/* 
			Zadanie 12

select Name, lower(Left(Name,1))+upper(right(Name,1)) as Alias,
case when charindex(' ', name) = 0 then name
else  right(name,CHARINDEX(' ',reverse(name))-1)
end as "Last word"
from Person.CountryRegion

*/
/*	
			Zadanie 13
select EDH.BusinessEntityID, S.Name 
from HumanResources.EmployeeDepartmentHistory as EDH
inner join HumanResources.Shift as S on EDH.ShiftID=S.ShiftID;

*/
/* 
			Zadanie 14
select PPA.BusinessEntityID, PP.BusinessEntityID
from Person.Password as PPA
inner join Person.Person as PP on PPA.BusinessEntityID=PP.BusinessEntityID
where PP.BusinessEntityID >= 20000
order by PP.BusinessEntityID;

*/
/* 
		Tworzenie tabeli

Create table People (
id int,
firstname varchar(255),
secondname varchar(255),
age int, 
city varchar(255),
pesel int)

*/



