
--AB 1

--select * from THESISi.dbo.AB



SELECT COUNT(TotalYears) as 'AB 1 Total Years > 5'
FROM THESISi.dbo.ab
WHERE TotalYears >= 5;


select count(Reason) as 'AB 1 no reason given' from THESISi.dbo.AB where Reason = 'No reason given.'

select count(Type) as 'AB 1 Total Boil Water Advisories' from THESISi.dbo.AB where Type = 'Boil Water' 

select count(Type) as 'AB 1 Total Do Not Consume' from THESISi.dbo.AB where Type = 'Do Not Consume';



WITH Period1 AS
(
    SELECT
        COUNT(*) AS 'AB 1 Total Years',
        SUM(CASE WHEN TotalYears >= 5 THEN 1 ELSE 0 END) AS 'AB 1 Total Years > 5',
        (CAST(SUM(CASE WHEN TotalYears >= 5 THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*)) * 100 AS 'AB 1 Total Years > 5 percentage'
    FROM THESISi.dbo.AB AB1
),
Period3 AS
(
    SELECT
        COUNT(*) AS 'AB 3 Total Years',
        SUM(CASE WHEN TotalYears >= 5 THEN 1 ELSE 0 END) AS 'AB 3 Total Years > 5',
        (CAST(SUM(CASE WHEN TotalYears >= 5 THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*)) * 100 AS 'AB 3 Total Years > 5 percentage'
    FROM THESISiii.dbo.AB AB3
)
SELECT
    P1.[AB 1 Total Years],
    P1.[AB 1 Total Years > 5],
    P1.[AB 1 Total Years > 5 percentage] AS 'AB 1 Total Years > 5 percentage',
    P3.[AB 3 Total Years],
    P3.[AB 3 Total Years > 5],
    P3.[AB 3 Total Years > 5 percentage] AS 'AB 3 Total Years > 5 percentage',
    P3.[AB 3 Total Years > 5 percentage] - P1.[AB 1 Total Years > 5 percentage] AS 'Difference in Percentage'
FROM Period1 P1
JOIN Period3 P3 ON 1 = 1;



WITH Period1 AS
(
    SELECT
        COUNT(*) AS 'AB 1 Total Years',
        SUM(CASE WHEN TotalYears >= 10 THEN 1 ELSE 0 END) AS 'AB 1 Total Years > 10',
        (CAST(SUM(CASE WHEN TotalYears >= 10 THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*)) * 100 AS 'AB 1 Total Years > 10 percentage'
    FROM THESISi.dbo.AB AB1
),
Period3 AS
(
    SELECT
        COUNT(*) AS 'AB 3 Total Years',
        SUM(CASE WHEN TotalYears >= 10 THEN 1 ELSE 0 END) AS 'AB 3 Total Years > 10',
        (CAST(SUM(CASE WHEN TotalYears >= 10 THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*)) * 100 AS 'AB 3 Total Years > 10 percentage'
    FROM THESISiii.dbo.AB AB3
)
SELECT
    P1.[AB 1 Total Years],
    P1.[AB 1 Total Years > 10],
    P1.[AB 1 Total Years > 10 percentage] AS 'AB 1 Total Years > 10 percentage',
    P3.[AB 3 Total Years],
    P3.[AB 3 Total Years > 10],
    P3.[AB 3 Total Years > 10 percentage] AS 'AB 3 Total Years > 10 percentage',
    P3.[AB 3 Total Years > 10 percentage] - P1.[AB 1 Total Years > 10 percentage] AS 'Difference in Percentage'
FROM Period1 P1
JOIN Period3 P3 ON 1 = 1;




WITH Period1 AS
(
    SELECT
        COUNT(*) AS 'AB 1 Total Years'
    FROM THESISi.dbo.AB AB1
),
Period3 AS
(
    SELECT
        COUNT(*) AS 'AB 3 Total Years'
    FROM THESISiii.dbo.AB AB3
)
SELECT
    P1.[AB 1 Total Years],
    P3.[AB 3 Total Years],
    P1.[AB 1 Total Years] - P3.[AB 3 Total Years] AS 'Difference in Total Years'
FROM Period1 P1
CROSS JOIN Period3 P3;



--BC 1

--select * from THESISi.dbo.BC



select count(TotalYears) as 'BC 1 Total Years > 5' 
from THESISi.dbo.BC 
where TotalYears >= 5 



Select Distinct(TotalYears), Count(TotalYears)
From THESISi.dbo.BC
Group by TotalYears



--FHA 1

--select * from THESISi.dbo.FHA

SELECT COUNT(TotalYears) as 'FHA 1 Total Years > 5'
FROM THESISi.dbo.FHA
WHERE TotalYears >= 5;



--FNHA

--select * from THESISi.dbo.FNHA

select count(AdvisoryType) as 'FNHA 1 Total Water Quality Advisories' from THESISi.dbo.FNHA where AdvisoryType = 'Water Quality Advisory' 

select count(AdvisoryType) as 'FNHA 1 Total Boil Water Advisories' from THESISi.dbo.FNHA where AdvisoryType = 'Boil Water Advisory' 

select count(AdvisoryType) as 'FNHA 1 Total Do Not Consume' from THESISi.dbo.FNHA where AdvisoryType = 'Do Not Consume' 



--IHA i

select * from THESISi.dbo.IHA
select * from THESISiii.dbo.IHA

--FIX:
select count([Reason(s) for Advisory]) as 'IHA 1 Reason for advisory = NULL' from THESISi.dbo.IHA where [Reason(s) for Advisory] = 'NULL'

SELECT DISTINCT [Reason(s) for Advisory]
FROM THESISi.dbo.IHA;

select count([Reason(s) for Advisory]) as 'IHA 1 Reason for advisory = Untreated drinking water at risk' from THESISi.dbo.IHA where [Reason(s) for Advisory] = 'Untreated drinking water at risk of containing pathogens'

select count([Current Advisory]) as 'IHA 1 Total Water Quality Advisories' from THESISi.dbo.IHA where [Current Advisory] = 'Water Quality Advisory' 

select count([Current Advisory]) as 'IHA 1 Total Boil Water Advisories' from THESISi.dbo.IHA where [Current Advisory] = 'Boil Water Advisory' 

select count([Current Advisory]) as 'IHA 1 Total Do Not Consume' from THESISi.dbo.IHA where [Current Advisory] = 'Do Not Consume';




WITH Period1 AS
(
    SELECT
        COUNT(*) AS 'IHA 1 Total Years',
        SUM(CASE WHEN TotalYears >= 5 THEN 1 ELSE 0 END) AS 'IHA 1 Total Years > 5',
        (CAST(SUM(CASE WHEN TotalYears >= 5 THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*)) * 100 AS 'IHA 1 Total Years > 5 percentage'
    FROM THESISi.dbo.IHA IHA1
),
Period3 AS
(
    SELECT
        COUNT(*) AS 'IHA 3 Total Years',
        SUM(CASE WHEN TotalYears >= 5 THEN 1 ELSE 0 END) AS 'IHA 3 Total Years > 5',
        (CAST(SUM(CASE WHEN TotalYears >= 5 THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*)) * 100 AS 'IHA 3 Total Years > 5 percentage'
    FROM THESISiii.dbo.IHA IHA3
)
SELECT
    P1.[IHA 1 Total Years],
    P1.[IHA 1 Total Years > 5],
    P1.[IHA 1 Total Years > 5 percentage] AS 'IHA 1 Total Years > 5 percentage',
    P3.[IHA 3 Total Years],
    P3.[IHA 3 Total Years > 5],
    P3.[IHA 3 Total Years > 5 percentage] AS 'IHA 3 Total Years > 5 percentage',
    P3.[IHA 3 Total Years > 5 percentage] - P1.[IHA 1 Total Years > 5 percentage] AS 'Difference in Percentage'
FROM Period1 P1
JOIN Period3 P3 ON 1 = 1;




SELECT
        COUNT(*) AS 'IHA 2 Total Years'
    FROM THESISii.dbo.IHA IHA2;




WITH Period1 AS
(
    SELECT
        COUNT(*) AS 'IHA 1 Total Years'
    FROM THESISi.dbo.IHA IHA1
),
Period3 AS
(
    SELECT
        COUNT(*) AS 'IHA 3 Total Years'
    FROM THESISiii.dbo.IHA IHA3
)
SELECT
    P1.[IHA 1 Total Years],
    P3.[IHA 3 Total Years],
    P1.[IHA 1 Total Years] - P3.[IHA 3 Total Years] AS 'Difference in Total Years'
FROM Period1 P1
CROSS JOIN Period3 P3;




--MB 1

select * from THESISi.dbo.MB

select count(Type) as 'MB 1 Total Water Quality Advisories' from THESISi.dbo.MB where Type = 'Water Quality Advisory' 

select count(Type) as 'IHA 1 Total Boil Water Advisories' from THESISi.dbo.MB where Type = 'Boil Water' 

select count(Type) as 'IHA 1 Total Do Not Consume' from THESISi.dbo.MB where Type = 'Do Not Consume' 

SELECT COUNT(TotalYears) as 'MB 1 Total Years Greater Than 5'
FROM THESISi.dbo.MB
WHERE TotalYears >= 5;

SELECT COUNT(TotalYears) as 'MB 1 Total Years > 10'
FROM THESISi.dbo.MB
WHERE TotalYears >= 10;

SELECT COUNT(TotalYears) as 'MB 1 Total Years'
FROM THESISi.dbo.MB


SELECT
    COUNT(*) AS 'MB 1 TotalRowCount',
    SUM(CASE WHEN TotalYears >= 5 THEN 1 ELSE 0 END) AS 'MB 1 Total Years > 5',
    (CAST(SUM(CASE WHEN TotalYears >= 5 THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*)) * 100 AS 'MB 1 Total Years > 5 percentage'
FROM THESISi.dbo.MB;




--MB 2

select * from THESISii.dbo.MB




--MB 3

select * from THESISiii.dbo.MB



select count(Type) as 'MB 1 Total Water Quality Advisories' from THESISiii.dbo.MB where Type = 'Water Quality Advisory' 

select count(Type) as 'MB 1 Total Boil Water Advisories' from THESISiii.dbo.MB where Type = 'Boil Water' 

select count(Type) as 'MB 1 Total Do Not Consume' from THESISiii.dbo.MB where Type = 'Do Not Consume' 

SELECT COUNT(TotalYears) as 'MB 1 Total Years Greater Than 5'
FROM THESISiii.dbo.MB
WHERE TotalYears >= 5;

SELECT COUNT(TotalYears) as 'MB 1 Total Years > 10'
FROM THESISiii.dbo.MB
WHERE TotalYears >= 10;

SELECT COUNT(TotalYears) as 'MB 1 Total Years'
FROM THESISiii.dbo.MB


SELECT
    COUNT(*) AS 'MB 1 Total Years',
    SUM(CASE WHEN TotalYears >= 5 THEN 1 ELSE 0 END) AS 'MB 1 Total Years > 5',
    (CAST(SUM(CASE WHEN TotalYears >= 5 THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*)) * 100 AS 'MB 1 Total Years > 5 percentage'
FROM THESISiii.dbo.MB;




WITH Period1 AS
(
    SELECT
        COUNT(*) AS 'MB 1 Total Years',
        SUM(CASE WHEN TotalYears >= 5 THEN 1 ELSE 0 END) AS 'MB 1 Total Years > 5',
        (CAST(SUM(CASE WHEN TotalYears >= 5 THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*)) * 100 AS 'MB 1 Total Years > 5 percentage'
    FROM THESISi.dbo.MB MB1
),
Period3 AS
(
    SELECT
        COUNT(*) AS 'MB 3 Total Years',
        SUM(CASE WHEN TotalYears >= 5 THEN 1 ELSE 0 END) AS 'MB 3 Total Years > 5',
        (CAST(SUM(CASE WHEN TotalYears >= 5 THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*)) * 100 AS 'MB 3 Total Years > 5 percentage'
    FROM THESISiii.dbo.MB MB3
)
SELECT
    P1.[MB 1 Total Years],
    P1.[MB 1 Total Years > 5],
    P1.[MB 1 Total Years > 5 percentage] AS 'MB 1 Total Years > 5 percentage',
    P3.[MB 3 Total Years],
    P3.[MB 3 Total Years > 5],
    P3.[MB 3 Total Years > 5 percentage] AS 'MB 3 Total Years > 5 percentage',
    P3.[MB 3 Total Years > 5 percentage] - P1.[MB 1 Total Years > 5 percentage] AS 'Difference in Percentage'
FROM Period1 P1
JOIN Period3 P3 ON 1 = 1;




WITH Period1 AS
(
    SELECT
        COUNT(*) AS 'MB 1 Total Years',
        SUM(CASE WHEN TotalYears >= 10 THEN 1 ELSE 0 END) AS 'MB 1 Total Years > 10',
        (CAST(SUM(CASE WHEN TotalYears >= 10 THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*)) * 100 AS 'MB 1 Total Years > 10 percentage'
    FROM THESISi.dbo.MB MB1
),
Period3 AS
(
    SELECT
        COUNT(*) AS 'MB 3 Total Years',
        SUM(CASE WHEN TotalYears >= 10 THEN 1 ELSE 0 END) AS 'MB 3 Total Years > 10',
        (CAST(SUM(CASE WHEN TotalYears >= 10 THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*)) * 100 AS 'MB 3 Total Years > 10 percentage'
    FROM THESISiii.dbo.MB MB3
)
SELECT
    P1.[MB 1 Total Years],
    P1.[MB 1 Total Years > 10],
    P1.[MB 1 Total Years > 10 percentage] AS 'MB 1 Total Years > 10 percentage',
    P3.[MB 3 Total Years],
    P3.[MB 3 Total Years > 10],
    P3.[MB 3 Total Years > 10 percentage] AS 'MB 3 Total Years > 10 percentage',
    P3.[MB 3 Total Years > 10 percentage] - P1.[MB 1 Total Years > 10 percentage] AS 'Difference in Percentage'
FROM Period1 P1
JOIN Period3 P3 ON 1 = 1;  -- Join on a constant value to get cross join effect
