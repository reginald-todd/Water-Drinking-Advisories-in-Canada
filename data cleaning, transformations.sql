--AB i

SELECT * FROM THESISi.dbo.AB

ALTER TABLE THESISi.dbo.AB
ADD SinceConverted DATE;

UPDATE THESISi.dbo.AB
SET SinceConverted = CONVERT(DATE,Since)

ALTER TABLE THESISi.dbo.AB
ADD TotalYears INT

UPDATE THESISi.dbo.AB
SET TotalYears = DATEDIFF(YEAR,SinceConverted,'2022/01/07')


--BC i

SELECT * FROM THESISi.dbo.BC

ALTER TABLE THESISi.dbo.BC
ADD SinceConverted DATE;

UPDATE THESISi.dbo.BC
SET SinceConverted = CONVERT(DATE,Since)

ALTER TABLE THESISi.dbo.BC
ADD TotalYears INT

UPDATE THESISi.dbo.BC
SET TotalYears = DATEDIFF(YEAR,SinceConverted,'2022/01/07')


--FHA i

SELECT * FROM THESISi.dbo.FHA

ALTER TABLE THESISi.dbo.FHA
DROP COLUMN F2, F3, F5

DELETE FROM THESISi.dbo.FHA WHERE [Facility Name] IS NULL

ALTER TABLE THESISi.dbo.FHA
ADD [Start Date Converted] DATE;

UPDATE THESISi.dbo.FHA
SET [Start Date Converted] = CONVERT(DATE,[Start Date])

ALTER TABLE THESISi.dbo.FHA
add TotalYears int

update THESISi.dbo.FHA
SET TotalYears = DATEDIFF(YEAR,[Start Date Converted],'2022/01/07')


--FNHA i

SELECT * FROM THESISi.dbo.FNHA

ALTER TABLE THESISi.dbo.FNHA
ADD [Total Years] INT

SET QUOTED_IDENTIFIER ON;

UPDATE THESISi.dbo.FNHA
SET "Total Years" = 
    CASE 
        WHEN "Date Revoked Converted" IS NOT NULL 
        THEN DATEDIFF(YEAR, "Date Set Converted", "Date Revoked Converted")
        ELSE DATEDIFF(YEAR, "Date Set Converted", '2021-12-31')
    END;


--IHA i

SELECT * FROM THESISi.dbo.IHA

ALTER TABLE THESISi.dbo.IHA
DROP COLUMN [Days since start date]

ALTER TABLE THESISi.dbo.IHA
ADD TotalYears INT

UPDATE THESISi.dbo.IHA
SET TotalYears = DATEDIFF(YEAR,[Advisory Start Date],'2022/01/07')
WHERE TRY_CONVERT(DATE, [Advisory Start Date]) IS NOT NULL;


--MB i

SELECT * FROM THESISi.dbo.MB

ALTER TABLE THESISi.dbo.MB
ADD [Since Converted] DATE;

UPDATE THESISi.dbo.MB
SET [Since Converted] = CONVERT(DATE,Since)

ALTER TABLE THESISi.dbo.MB
ADD TotalYears INT

UPDATE THESISi.dbo.MB
SET TotalYears = DATEDIFF(YEAR,[Since Converted],'2022/01/07')


--VCHA i

SELECT * FROM THESISi.dbo.VCHA

ALTER TABLE THESISi.dbo.VCHA
DROP COLUMN Today, F8, F9, F10, F11, F12

ALTER TABLE THESISi.dbo.VCHA
ADD [Start Date Converted] DATE;

UPDATE THESISi.dbo.VCHA
SET [Start Date Converted] = CONVERT(DATE,[Start Date])

ALTER TABLE THESISi.dbo.VCHA
ADD TotalYears INT

UPDATE THESISi.dbo.VCHA
SET TotalYears = DATEDIFF(YEAR,[Start Date Converted],'2022/01/07')


--VIHA i

SELECT * FROM THESISi.dbo.VIHA

ALTER TABLE THESISi.dbo.VIHA
DROP COLUMN Today, F2, F5

ALTER TABLE THESISi.dbo.VIHA
ADD [Start Date Converted] DATE;

UPDATE THESISi.dbo.VIHA
SET [Start Date Converted] = CONVERT(DATE,[Start Date])

ALTER TABLE THESISi.dbo.VIHA
ADD TotalYears INT

UPDATE THESISi.dbo.VIHA
SET TotalYears = DATEDIFF(YEAR,[Start Date Converted],'2022/01/07')


--FHA ii

SELECT * FROM THESISii.dbo.FHA

ALTER TABLE THESISii.dbo.FHA
ADD [Start Date Converted] DATE;

UPDATE THESISii.dbo.FHA
SET [Start Date Converted] = CONVERT(DATE,[Start Date])

ALTER TABLE THESISii.dbo.FHA
ADD TotalYears INT

UPDATE THESISii.dbo.FHA
SET TotalYears = DATEDIFF(YEAR,[Start Date Converted],'2022/09/28')


--FNHA ii

SELECT * FROM THESISii.dbo.FNHA

ALTER TABLE THESISii.dbo.FNHA
ADD [Date Set Converted] DATE;

UPDATE THESISii.dbo.FNHA
SET [Date Set Converted] = CONVERT(DATE,[Date Set])

ALTER TABLE THESISii.dbo.FNHA
ADD [Date Revoked Converted] DATE;

UPDATE THESISii.dbo.FNHA
SET [Date Revoked Converted] = CONVERT(DATE,[Date_Revoked])

ALTER TABLE THESISii.dbo.FNHA
ADD [Total Years] INT

SET QUOTED_IDENTIFIER ON;

UPDATE THESISii.dbo.FNHA
SET "Total Years" = 
    CASE 
        WHEN [Date Revoked Converted] IS NOT NULL 
        THEN DATEDIFF(YEAR, [Date Set Converted], [Date Revoked Converted])
        ELSE DATEDIFF(YEAR, [Date Set Converted], '2022-08-31')
    END;


--IHA ii

SELECT * FROM THESISii.dbo.IHA

--NHA ii

SELECT * FROM THESISii.dbo.NHA

ALTER TABLE THESISii.dbo.NHA
ADD TotalYears INT

UPDATE THESISii.dbo.NHA
SET TotalYears = DATEDIFF(YEAR,[Start Date],'2022/06/30')

--VCHA ii

SELECT * FROM THESISii.dbo.VCHA

--VIHA ii

SELECT * FROM THESISii.dbo.VIHA


--AB iii

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


--FHA iii

SELECT * FROM THESISiii.dbo.FHA

ALTER TABLE THESISiii.dbo.FHA
ADD TotalYears INT

UPDATE THESISiii.dbo.FHA
SET TotalYears = DATEDIFF(YEAR,[Start Date],'2023/09/10')


--FNHA iii

ALTER TABLE THESISiii.dbo.FNHA
ADD [Total Years] INT

UPDATE THESISiii.dbo.FNHA
SET "Total Years" = DATEDIFF(YEAR, "Date Set", '2023-04-30')


--IHA iii

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


--NHA iii

ALTER TABLE THESISiii.dbo.NHA
ADD TotalYears INT

UPDATE THESISiii.dbo.NHA
SET TotalYears = DATEDIFF(YEAR,[Start Date],'2023/09/10')


--MB iii

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

--VIHA iii

ALTER TABLE THESISiii.dbo.VIHA
ADD TotalYears INT

UPDATE THESISiii.dbo.VIHA
SET TotalYears = DATEDIFF(YEAR,[Start Date],'2023/09/11')
