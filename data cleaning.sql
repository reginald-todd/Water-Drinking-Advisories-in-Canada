
2022.01.07

AB i

SELECT * FROM THESISi.dbo.AB

ALTER TABLE THESISi.dbo.AB
ADD SinceConverted DATE;

UPADTE THESISi.dbo.AB
SET SinceConverted = CONVERT(DATE,Since)

ALTER TABLE THESISi.dbo.AB
DROP COLUMN Since


ALTER TABLE THESISi.dbo.AB
ADD TotalDays INT

UPDATE THESISi.dbo.AB
SET TotalDays = DATEDIFF(DAY,since,'2022/01/07')



ALTER TABLE THESISi.dbo.AB
ADD TotalYears INT

UPDATE THESISi.dbo.AB
SET TotalYears = DATEDIFF(YEAR,since,'2022/01/07')


BC i

SELECT * FROM THESISi.dbo.BC


ALTER TABLE THESISi.dbo.BC
ADD SinceConverted DATE;

UPDATE THESISi.dbo.BC
SET SinceConverted = CONVERT(DATE,Since)

ALTER TABLE THESISi.dbo.BC
DROP COLUMN Since

ALTER TABLE THESISi.dbo.BC
ADD TotalDays INT

UPDATE THESISi.dbo.BC
SET TotalDays = DATEDIFF(DAY,since,'2022/01/07')

ALTER TABLE THESISi.dbo.BC
ADD TotalYears INT

UPDATE THESISi.dbo.BC
SET TotalYears = DATEDIFF(YEAR,since,'2022/01/07')


FHA i

SELECT * FROM THESISi.dbo.FHA

ALTER TABLE THESISi.dbo.FHA
DROP COLUMN F2, F3, F5

DELETE FROM THESISi.dbo.FHA WHERE FacilityName IS NULL

ALTER TABLE THESISi.dbo.FHA
ADD StartDateConverted DATE;

UPDATE THESISi.dbo.FHA
SET StartDateConverted = CONVERT(DATE,StartDate)

ALTER TABLE THESISi.dbo.FHA
DROP column StartDate

ALTER TABLE THESISi.dbo.FHA
ADD TotalDays INT

UPDATE THESISi.dbo.FHA
SET TotalDays = DATEDIFF(DAY,StartDate,'2022/01/07')

SELECT StartDate,
DATEDIFF(DAY,StartDate,'2022/01/07') AS TotalDays FROM THESISi.dbo.FHA

ALTER TABLE THESISi.dbo.FHA
add TotalYears int

update THESISi.dbo.FHA
SET TotalYears = DATEDIFF(YEAR,StartDate,'2022/01/07')


FNHA 1

SELECT * FROM THESISi.dbo.FNHA


IHA 1

SELECT * FROM THESISi.dbo.IHA

ALTER TABLE THESISi.dbo.IHA
DROP COLUMN [Days since start date]

ALTER TABLE THESISi.dbo.IHA
ADD TotalYears INT

UPDATE THESISi.dbo.IHA
SET TotalYears = DATEDIFF(YEAR,[Advisory Start Date],'2022/01/07')
WHERE TRY_CONVERT(DATE, [Advisory Start Date]) IS NOT NULL;


MB 1

SELECT * FROM THESISi.dbo.MB

ALTER TABLE THESISi.dbo.MB
ADD SinceConverted DATE;

UPDATE THESISi.dbo.MB
SET SinceConverted = CONVERT(DATE,Since)

ALTER TABLE THESISi.dbo.MB
DROP COLUMN Since

ALTER TABLE THESISi.dbo.MB
ADD TotalDays INT

UPDATE THESISi.dbo.MB
SET TotalDays = DATEDIFF(DAY,since,'2022/01/07')

ALTER TABLE THESISi.dbo.MB
ADD TotalYears INT

UPDATE THESISi.dbo.MB
SET TotalYears = DATEDIFF(YEAR,since,'2022/01/07')


VCHA i

SELECT * FROM dbo.vcha

ALTER TABLE dbo.vcha
ADD StartDateConverted DATE;

UPDATE dbo.vcha
SET StartDateConverted = CONVERT(DATE,StartDate)

ALTER TABLE dbo.vcha
DROP COLUMN StartDate


VIHA i

SELECT * FROM THESISi.dbo.viha

ALTER TABLE THESISi.dbo.viha
DROP COLUMN Today, F2, F5


2022.09.28


AB ii

SELECT * FROM THESISii.dbo.AB


FHA ii

SELECT * FROM THESISii.dbo.FHA

ALTER TABLE THESISii.dbo.FHA
add StartDateConverted Date;

UPDATE THESISii.dbo.FHA
SET StartDateConverted = CONVERT(DATE,StartDate)

ALTER TABLE THESISii.dbo.FHA
DROP COLUMN StartDate


FNHA ii

SELECT * FROM THESISii.dbo.FNHA

ALTER TABLE THESISii.dbo.FNHA
ADD DateSetConverted DATE;

UPDATE THESISii.dbo.FNHA
SET DateSetConverted = CONVERT(DATE,DateSet)

ALTER TABLE THESISii.dbo.FNHA
DROP COLUMN DateSet

ALTER TABLE THESISii.dbo.FNHA
ADD DateRevokedConverted DATE;

UPDATE THESISii.dbo.FNHA
SET DateRevokedConverted = CONVERT(DATE,DateRevoked)

ALTER TABLE THESISii.dbo.FNHA
DROP COLUMN DateRevoked


IHA ii

SELECT * FROM THESISii.dbo.IHA

MB ii

SELECT * FROM THESISii.dbo.MB

SK ii

SELECT * FROM THESISii.dbo.SK


2023.06.26

AB iii

SELECT * FROM THESISiii.dbo.AB

ALTER TABLE THESISiii.dbo.AB
ADD SinceConverted DATE;

UPDATE THESISiii.dbo.AB
SET SinceConverted = CONVERT(DATE,Since)

ALTER TABLE THESISiii.dbo.AB
DROP COLUMN Since

ALTER TABLE THESISiii.dbo.AB
ADD TotalDays INT

UPDATE THESISiii.dbo.AB
SET TotalDays = DATEDIFF(DAY,since,'2023/06/26')

ALTER TABLE THESISiii.dbo.AB
ADD TotalYears INT

UPDATE THESISiii.dbo.AB
SET TotalYears = DATEDIFF(YEAR,since,'2023/06/26')


IHA 3

SELECT * FROM THESISii.dbo.SK THESISiii.dbo.IHA

ALTER TABLE THESISiii.dbo.IHA
ADD StartDateConverted DATE;

UPDATE THESISiii.dbo.IHA
SET StartDateConverted = CONVERT(DATE,[Start Date])

ALTER TABLE THESISiii.dbo.IHA
DROP COLUMN [Start Date]

ALTER TABLE THESISiii.dbo.IHA
ADD TotalYears INT

UPDATE THESISiii.dbo.IHA
SET TotalYears = DATEDIFF(YEAR,StartDate,'2023/06/26')
WHERE TRY_CONVERT(DATE, StartDate) IS NOT NULL;


MB 3

SELECT * FROM THESISiii.dbo.MB

ALTER TABLE THESISiii.dbo.MB
ADD SinceConverted DATE;

UPDATE THESISiii.dbo.MB
SET SinceConverted = CONVERT(DATE,Since)

ALTER TABLE THESISiii.dbo.MB
DROP COLUMN Since

ALTER TABLE THESISiii.dbo.MB
ADD TotalDays INT

UPDATE THESISiii.dbo.MB
SET TotalDays = DATEDIFF(DAY,since,'2023/06/26')

ALTER TABLE THESISiii.dbo.MB
ADD TotalYears INT

UPDATE THESISiii.dbo.MB
SET TotalYears = DATEDIFF(YEAR,since,'2023/06/26')