
--2022.01.07

--AB i

select * from THESISi.dbo.AB

ALTER TABLE THESISi.dbo.AB
add SinceConverted Date;

--Update THESISi.dbo.AB
--SET SinceConverted = CONVERT(Date,Since)

--ALTER TABLE THESISi.dbo.AB
--DROP column Since





ALTER TABLE THESISi.dbo.AB
add TotalDays int

--update THESISi.dbo.AB
--SET TotalDays = DATEDIFF(day,since,'2022/01/07')



ALTER TABLE THESISi.dbo.AB
add TotalYears int

--update THESISi.dbo.AB
--SET TotalYears = DATEDIFF(year,since,'2022/01/07')










--BC i

select * from THESISi.dbo.BC


ALTER TABLE THESISi.dbo.BC
add SinceConverted Date;

--Update THESISi.dbo.BC
--SET SinceConverted = CONVERT(Date,Since)

--ALTER TABLE THESISi.dbo.BC
--DROP column Since



ALTER TABLE THESISi.dbo.BC
add TotalDays int

--update THESISi.dbo.BC
--SET TotalDays = DATEDIFF(day,since,'2022/01/07')



ALTER TABLE THESISi.dbo.BC
add TotalYears int

--update THESISi.dbo.BC
--SET TotalYears = DATEDIFF(year,since,'2022/01/07')






--FHA i

select * from THESISi.dbo.FHA

ALTER TABLE THESISi.dbo.FHA
DROP column F2, F3, F5



delete from THESISi.dbo.FHA where FacilityName IS NULL

ALTER TABLE THESISi.dbo.FHA
add StartDateConverted Date;

--Update THESISi.dbo.FHA
--SET StartDateConverted = CONVERT(Date,StartDate)

--ALTER TABLE THESISi.dbo.FHA
--DROP column StartDate



ALTER TABLE THESISi.dbo.FHA
add TotalDays int

--update THESISi.dbo.FHA
--SET TotalDays = DATEDIFF(day,StartDate,'2022/01/07')


--select StartDate,
--datediff(day,StartDate,'2022/01/07') AS TotalDays from THESISi.dbo.FHA




ALTER TABLE THESISi.dbo.FHA
add TotalYears int

--update THESISi.dbo.FHA
--SET TotalYears = DATEDIFF(year,StartDate,'2022/01/07')






--FNHA 1

select * from THESISi.dbo.FNHA





--IHA 1

select * from THESISi.dbo.IHA

--ALTER TABLE THESISi.dbo.IHA
--DROP column [Days since start date]


ALTER TABLE THESISi.dbo.IHA
add TotalYears int

update THESISi.dbo.IHA
SET TotalYears = DATEDIFF(year,[Advisory Start Date],'2022/01/07')
WHERE TRY_CONVERT(DATE, [Advisory Start Date]) IS NOT NULL;


--MB 1

select * from THESISi.dbo.MB

ALTER TABLE THESISi.dbo.MB
add SinceConverted Date;

--Update THESISi.dbo.MB
--SET SinceConverted = CONVERT(Date,Since)

--ALTER TABLE THESISi.dbo.MB
--DROP column Since



ALTER TABLE THESISi.dbo.MB
add TotalDays int

--update THESISi.dbo.MB
--SET TotalDays = DATEDIFF(day,since,'2022/01/07')



ALTER TABLE THESISi.dbo.MB
add TotalYears int

--update THESISi.dbo.MB
--SET TotalYears = DATEDIFF(year,since,'2022/01/07')


--VCHA i

select * from dbo.vcha


ALTER TABLE dbo.vcha
add StartDateConverted Date;

--Update dbo.vcha
--SET StartDateConverted = CONVERT(Date,StartDate)

--ALTER TABLE dbo.vcha
--DROP column StartDate



--VIHA i

select * from THESISi.dbo.viha

ALTER TABLE THESISi.dbo.viha
DROP column Today, F2, F5







--2022.09.28


--AB ii

select * from THESISii.dbo.AB



--FHA ii

select * from THESISii.dbo.FHA

ALTER TABLE THESISii.dbo.FHA
add StartDateConverted Date;

--Update THESISii.dbo.FHA
--SET StartDateConverted = CONVERT(Date,StartDate)

--ALTER TABLE THESISii.dbo.FHA
--DROP column StartDate


--FNHA ii

select * from THESISii.dbo.FNHA

ALTER TABLE THESISii.dbo.FNHA
add DateSetConverted Date;

--Update THESISii.dbo.FNHA
--SET DateSetConverted = CONVERT(Date,DateSet)

--ALTER TABLE THESISii.dbo.FNHA
--DROP column DateSet



ALTER TABLE THESISii.dbo.FNHA
add DateRevokedConverted Date;

--Update THESISii.dbo.FNHA
--SET DateRevokedConverted = CONVERT(Date,DateRevoked)

--ALTER TABLE THESISii.dbo.FNHA
--DROP column DateRevoked



--IHA 2

select * from THESISii.dbo.IHA

--MB 2

select * from THESISii.dbo.MB

--SK 2

select * from THESISii.dbo.SK



--2023.06.26


--AB


--2022.01.07

--AB i

select * from THESISiii.dbo.AB

ALTER TABLE THESISiii.dbo.AB
add SinceConverted Date;

--Update THESISiii.dbo.AB
--SET SinceConverted = CONVERT(Date,Since)

ALTER TABLE THESISiii.dbo.AB
DROP column Since





ALTER TABLE THESISiii.dbo.AB
add TotalDays int

--update THESISiii.dbo.AB
--SET TotalDays = DATEDIFF(day,since,'2023/06/26')



ALTER TABLE THESISiii.dbo.AB
add TotalYears int

--update THESISiii.dbo.AB
--SET TotalYears = DATEDIFF(year,since,'2023/06/26')



--IHA 3

select * from THESISiii.dbo.IHA

ALTER TABLE THESISiii.dbo.IHA
add StartDateConverted Date;

--Update THESISiii.dbo.IHA
--SET StartDateConverted = CONVERT(Date,[Start Date])

ALTER TABLE THESISiii.dbo.IHA
DROP column [Start Date]



ALTER TABLE THESISiii.dbo.IHA
add TotalYears int

update THESISiii.dbo.IHA
SET TotalYears = DATEDIFF(year,StartDate,'2023/06/26')
WHERE TRY_CONVERT(DATE, StartDate) IS NOT NULL;



--MB 3

select * from THESISiii.dbo.MB

ALTER TABLE THESISiii.dbo.MB
add SinceConverted Date;

--Update THESISiii.dbo.MB
--SET SinceConverted = CONVERT(Date,Since)

ALTER TABLE THESISiii.dbo.MB
DROP column Since



ALTER TABLE THESISiii.dbo.MB
add TotalDays int

--update THESISiii.dbo.MB
--SET TotalDays = DATEDIFF(day,since,'2023/06/26')



ALTER TABLE THESISiii.dbo.MB
add TotalYears int

--update THESISiii.dbo.MB
--SET TotalYears = DATEDIFF(year,since,'2023/06/26')