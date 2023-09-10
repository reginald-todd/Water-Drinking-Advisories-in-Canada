
--5 YEARS

--SELECT * FROM THESISi.dbo.IHA
--SELECT * FROM THESISii.dbo.IHA
--SELECT * FROM THESISiii.dbo.IHA

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

--SELECT COUNT

SELECT COUNT ([Advisory Start Date])AS 'IHA 1 Advisory Start Date Total' FROM THESISiii.dbo.IHA

SELECT COUNT ([Advisory Start Date])AS 'IHA 1 Advisory Start Date = NULL'
FROM THESISiii.dbo.IHA WHERE [Advisory Start Date] = 'N/A';


--COUNT START DATE = NULL AS UNKOWN LENGTH OF TIME

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


--10 YEARS

WITH Period1 AS
(
    SELECT
        COUNT(*) AS 'IHA 1 Total Years',
        SUM(CASE WHEN TotalYears >= 10 THEN 1 ELSE 0 END) AS 'IHA 1 Total Years > 10',
        (CAST(SUM(CASE WHEN TotalYears >= 10 THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*)) * 100 AS 'IHA 1 Total Years > 10 percentage'
    FROM THESISi.dbo.IHA IHA1
),
Period3 AS
(
    SELECT
        COUNT(*) AS 'IHA 3 Total Years',
        SUM(CASE WHEN TotalYears >= 10 THEN 1 ELSE 0 END) AS 'IHA 3 Total Years > 10',
        (CAST(SUM(CASE WHEN TotalYears >= 10 THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*)) * 100 AS 'IHA 3 Total Years > 10 percentage'
    FROM THESISiii.dbo.IHA IHA3
)
SELECT
    P1.[IHA 1 Total Years],
    P1.[IHA 1 Total Years > 10],
    P1.[IHA 1 Total Years > 10 percentage] AS 'IHA 1 Total Years > 10 percentage',
    P3.[IHA 3 Total Years],
    P3.[IHA 3 Total Years > 10],
    P3.[IHA 3 Total Years > 10 percentage] AS 'IHA 3 Total Years > 10 percentage',
    P3.[IHA 3 Total Years > 10 percentage] - P1.[IHA 1 Total Years > 10 percentage] AS 'Difference in Percentage'
FROM Period1 P1
JOIN Period3 P3 ON 1 = 1;


--DIFFERENCE IN TOTAL YEARS

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