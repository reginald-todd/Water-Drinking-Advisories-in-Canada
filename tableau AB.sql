
--AB

--5 YEARS

USE THESISi
GO
CREATE VIEW [AB 5 YEARS]
AS
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
GO

select * 
from THESISi.dbo.[AB 5 YEARS]



--10 YEARS


USE THESISi
GO
CREATE VIEW [AB 10 YEARS]
AS
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

select * 
from THESISi.dbo.[AB 10 YEARS]



--DIFFERENCE IN TOTAL YEARS


USE THESISi
GO
CREATE VIEW [AB DIFFERENCE IN TOTAL YEARS]
AS
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



select * 
from THESISi.dbo.[AB DIFFERENCE IN TOTAL YEARS]