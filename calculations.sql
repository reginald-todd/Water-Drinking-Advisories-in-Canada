--AB 1

--SELECT * FROM THESISi.dbo.AB

SELECT COUNT(TotalYears) AS 'AB 1 Total Years > 5'
FROM THESISi.dbo.ab
WHERE TotalYears >= 5;

SELECT COUNT(Reason) AS 'AB 1 no reason given' FROM THESISi.dbo.AB WHERE Reason = 'No reason given.'

SELECT COUNT(Type) AS 'AB 1 Total Boil Water Advisories' FROM THESISi.dbo.AB WHERE Type = 'Boil Water' 

SELECT COUNT(Type) AS 'AB 1 Total Do Not Consume' FROM THESISi.dbo.AB WHERE Type = 'Do Not Consume';


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

SELECT COUNT(TotalYears) AS 'BC 1 Total Years > 5' 
FROM THESISi.dbo.BC 
WHERE TotalYears >= 5 

SELECT DISTINCT(TotalYears), COUNT(TotalYears)
FROM THESISi.dbo.BC
GROUP BY TotalYears

--FHA 1

--SELECT * FROM THESISi.dbo.FHA

SELECT COUNT(TotalYears) AS 'FHA 1 Total Years > 5'
FROM THESISi.dbo.FHA
WHERE TotalYears >= 5;


--FNHA

--SELECT * FROM THESISi.dbo.FNHA

SELECT COUNT(AdvisoryType) AS 'FNHA 1 Total Water Quality Advisories' FROM THESISi.dbo.FNHA WHERE AdvisoryType = 'Water Quality Advisory' 

SELECT COUNT(AdvisoryType) AS 'FNHA 1 Total Boil Water Advisories' FROM THESISi.dbo.FNHA WHERE AdvisoryType = 'Boil Water Advisory' 

SELECT COUNT(AdvisoryType) AS 'FNHA 1 Total Do Not Consume' FROM THESISi.dbo.FNHA WHERE AdvisoryType = 'Do Not Consume' 



--IHA 1

SELECT * FROM THESISi.dbo.IHA
SELECT * FROM THESISiii.dbo.IHA

--FIX:
SELECT COUNT([Reason(s) for Advisory]) AS 'IHA 1 Reason for advisory = NULL' FROM THESISi.dbo.IHA WHERE [Reason(s) for Advisory] = 'NULL'

SELECT DISTINCT [Reason(s) for Advisory]
FROM THESISi.dbo.IHA;

SELECT COUNT([Reason(s) for Advisory]) AS 'IHA 1 Reason for advisory = Untreated drinking water at risk' FROM THESISi.dbo.IHA WHERE [Reason(s) for Advisory] = 'Untreated drinking water at risk of containing pathogens'

SELECT COUNT([Current Advisory]) AS 'IHA 1 Total Water Quality Advisories' FROM THESISi.dbo.IHA WHERE [Current Advisory] = 'Water Quality Advisory' 

SELECT COUNT([Current Advisory]) AS 'IHA 1 Total Boil Water Advisories' FROM THESISi.dbo.IHA WHERE [Current Advisory] = 'Boil Water Advisory' 

SELECT COUNT([Current Advisory]) AS 'IHA 1 Total Do Not Consume' FROM THESISi.dbo.IHA WHERE [Current Advisory] = 'Do Not Consume';




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
GO



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
GO



--MB 1

SELECT * FROM THESISi.dbo.MB

SELECT COUNT(Type) AS 'MB 1 Total Water Quality Advisories' FROM THESISi.dbo.MB WHERE Type = 'Water Quality Advisory' 

SELECT COUNT(Type) AS 'IHA 1 Total Boil Water Advisories' FROM THESISi.dbo.MB WHERE Type = 'Boil Water' 

SELECT COUNT(Type) AS 'IHA 1 Total Do Not Consume' FROM THESISi.dbo.MB WHERE Type = 'Do Not Consume' 

SELECT COUNT(TotalYears) AS 'MB 1 Total Years Greater Than 5'
FROM THESISi.dbo.MB
WHERE TotalYears >= 5;

SELECT COUNT(TotalYears) AS 'MB 1 Total Years > 10'
FROM THESISi.dbo.MB
WHERE TotalYears >= 10;

SELECT COUNT(TotalYears) AS 'MB 1 Total Years'
FROM THESISi.dbo.MB


SELECT
    COUNT(*) AS 'MB 1 TotalRowCount',
    SUM(CASE WHEN TotalYears >= 5 THEN 1 ELSE 0 END) AS 'MB 1 Total Years > 5',
    (CAST(SUM(CASE WHEN TotalYears >= 5 THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*)) * 100 AS 'MB 1 Total Years > 5 percentage'
FROM THESISi.dbo.MB;



--MB 3

SELECT * FROM THESISiii.dbo.MB

SELECT COUNT(Type) AS 'MB 1 Total Water Quality Advisories' FROM THESISiii.dbo.MB WHERE Type = 'Water Quality Advisory' 

SELECT COUNT(Type) AS 'MB 1 Total Boil Water Advisories' FROM THESISiii.dbo.MB WHERE Type = 'Boil Water' 

SELECT COUNT(Type) AS 'MB 1 Total Do Not Consume' FROM THESISiii.dbo.MB WHERE Type = 'Do Not Consume' 

SELECT COUNT(TotalYears) AS 'MB 1 Total Years Greater Than 5'
FROM THESISiii.dbo.MB
WHERE TotalYears >= 5;

SELECT COUNT(TotalYears) AS 'MB 1 Total Years > 10'
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
GO



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
JOIN Period3 P3 ON 1 = 1;
GO