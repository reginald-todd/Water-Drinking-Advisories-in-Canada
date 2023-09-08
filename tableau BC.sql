
--BC

--5 YEARS

--select * from THESISi.dbo.BC

USE THESISi
GO
CREATE VIEW [BC 5 YEARS]
AS
WITH Period1 AS
(
    SELECT
        COUNT(*) AS 'BC 1 Total Years',
        SUM(CASE WHEN TotalYears >= 5 THEN 1 ELSE 0 END) AS 'BC 1 Total Years > 5',
        (CAST(SUM(CASE WHEN TotalYears >= 5 THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*)) * 100 AS 'BC 1 Total Years > 5 percentage'
    FROM THESISi.dbo.BC BC1
),
Period3 AS
(
    SELECT
        COUNT(*) AS 'BC 3 Total Years',
        SUM(CASE WHEN TotalYears >= 5 THEN 1 ELSE 0 END) AS 'BC 3 Total Years > 5',
        (CAST(SUM(CASE WHEN TotalYears >= 5 THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*)) * 100 AS 'BC 3 Total Years > 5 percentage'
    FROM THESISiii.dbo.BC BC3
)
SELECT
    P1.[BC 1 Total Years],
    P1.[BC 1 Total Years > 5],
    P1.[BC 1 Total Years > 5 percentage] AS 'BC 1 Total Years > 5 percentage',
    P3.[BC 3 Total Years],
    P3.[BC 3 Total Years > 5],
    P3.[BC 3 Total Years > 5 percentage] AS 'BC 3 Total Years > 5 percentage',
    P3.[BC 3 Total Years > 5 percentage] - P1.[BC 1 Total Years > 5 percentage] AS 'Difference in Percentage'
FROM Period1 P1
JOIN Period3 P3 ON 1 = 1;
GO

select * 
from THESISi.dbo.[BC 5 YEARS]



--10 YEARS


USE THESISi
GO
CREATE VIEW [BC 10 YEARS]
AS
WITH Period1 AS
(
    SELECT
        COUNT(*) AS 'BC 1 Total Years',
        SUM(CASE WHEN TotalYears >= 10 THEN 1 ELSE 0 END) AS 'BC 1 Total Years > 10',
        (CAST(SUM(CASE WHEN TotalYears >= 10 THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*)) * 100 AS 'BC 1 Total Years > 10 percentage'
    FROM THESISi.dbo.BC BC1
),
Period3 AS
(
    SELECT
        COUNT(*) AS 'BC 3 Total Years',
        SUM(CASE WHEN TotalYears >= 10 THEN 1 ELSE 0 END) AS 'BC 3 Total Years > 10',
        (CAST(SUM(CASE WHEN TotalYears >= 10 THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*)) * 100 AS 'BC 3 Total Years > 10 percentage'
    FROM THESISiii.dbo.BC BC3
)
SELECT
    P1.[BC 1 Total Years],
    P1.[BC 1 Total Years > 10],
    P1.[BC 1 Total Years > 10 percentage] AS 'BC 1 Total Years > 10 percentage',
    P3.[BC 3 Total Years],
    P3.[BC 3 Total Years > 10],
    P3.[BC 3 Total Years > 10 percentage] AS 'BC 3 Total Years > 10 percentage',
    P3.[BC 3 Total Years > 10 percentage] - P1.[BC 1 Total Years > 10 percentage] AS 'Difference in Percentage'
FROM Period1 P1
JOIN Period3 P3 ON 1 = 1;

select * 
from THESISi.dbo.[BC 10 YEARS]



--DIFFERENCE IN TOTAL YEARS


USE THESISi
GO
CREATE VIEW [BC DIFFERENCE IN TOTAL YEARS]
AS
WITH Period1 AS
(
    SELECT
        COUNT(*) AS 'BC 1 Total Years'
    FROM THESISi.dbo.BC BC1
),
Period3 AS
(
    SELECT
        COUNT(*) AS 'BC 3 Total Years'
    FROM THESISiii.dbo.BC BC3
)
SELECT
    P1.[BC 1 Total Years],
    P3.[BC 3 Total Years],
    P1.[BC 1 Total Years] - P3.[BC 3 Total Years] AS 'Difference in Total Years'
FROM Period1 P1
CROSS JOIN Period3 P3;



select * 
from THESISi.dbo.[BC DIFFERENCE IN TOTAL YEARS]