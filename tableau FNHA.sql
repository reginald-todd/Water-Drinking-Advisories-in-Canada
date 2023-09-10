
--FNHA

--5 YEARS

--SELECT * FROM THESISi.dbo.FNHA

WITH Period1 AS
(
    SELECT
        COUNT(*) AS 'FNHA 1 Total Years',
        SUM(CASE WHEN [Total Years] >= 5 THEN 1 ELSE 0 END) AS 'FNHA 1 Total Years > 5',
        (CAST(SUM(CASE WHEN [Total Years] >= 5 THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*)) * 100 AS 'FNHA 1 Total Years > 5 percentage'
    FROM THESISi.dbo.FNHA FNHA1
),
Period3 AS
(
    SELECT
        COUNT(*) AS 'FNHA 3 Total Years',
        SUM(CASE WHEN [Total Years] >= 5 THEN 1 ELSE 0 END) AS 'FNHA 3 Total Years > 5',
        (CAST(SUM(CASE WHEN [Total Years] >= 5 THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*)) * 100 AS 'FNHA 3 Total Years > 5 percentage'
    FROM THESISiii.dbo.FNHA FNHA3
)
SELECT
    P1.[FNHA 1 Total Years],
    P1.[FNHA 1 Total Years > 5],
    P1.[FNHA 1 Total Years > 5 percentage] AS 'FNHA 1 Total Years > 5 percentage',
    P3.[FNHA 3 Total Years],
    P3.[FNHA 3 Total Years > 5],
    P3.[FNHA 3 Total Years > 5 percentage] AS 'FNHA 3 Total Years > 5 percentage',
    P3.[FNHA 3 Total Years > 5 percentage] - P1.[FNHA 1 Total Years > 5 percentage] AS 'Difference in Percentage'
FROM Period1 P1
JOIN Period3 P3 ON 1 = 1;


--10 YEARS

WITH Period1 AS
(
    SELECT
        COUNT(*) AS 'FNHA 1 Total Years',
        SUM(CASE WHEN [Total Years] >= 10 THEN 1 ELSE 0 END) AS 'FNHA 1 Total Years > 10',
        (CAST(SUM(CASE WHEN [Total Years] >= 10 THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*)) * 100 AS 'FNHA 1 Total Years > 10 percentage'
    FROM THESISi.dbo.FNHA FNHA1
),
Period3 AS
(
    SELECT
        COUNT(*) AS 'FNHA 3 Total Years',
        SUM(CASE WHEN [Total Years] >= 10 THEN 1 ELSE 0 END) AS 'FNHA 3 Total Years > 10',
        (CAST(SUM(CASE WHEN [Total Years] >= 10 THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*)) * 100 AS 'FNHA 3 Total Years > 10 percentage'
    FROM THESISiii.dbo.FNHA FNHA3
)
SELECT
    P1.[FNHA 1 Total Years],
    P1.[FNHA 1 Total Years > 10],
    P1.[FNHA 1 Total Years > 10 percentage] AS 'FNHA 1 Total Years > 10 percentage',
    P3.[FNHA 3 Total Years],
    P3.[FNHA 3 Total Years > 10],
    P3.[FNHA 3 Total Years > 10 percentage] AS 'FNHA 3 Total Years > 10 percentage',
    P3.[FNHA 3 Total Years > 10 percentage] - P1.[FNHA 1 Total Years > 10 percentage] AS 'Difference in Percentage'
FROM Period1 P1
JOIN Period3 P3 ON 1 = 1;


--DIFFERENCE IN TOTAL YEARS

WITH Period1 AS
(
    SELECT
        COUNT(*) AS 'FNHA 1 Total Years'
    FROM THESISi.dbo.FNHA FNHA1
),
Period3 AS
(
    SELECT
        COUNT(*) AS 'FNHA 3 Total Years'
    FROM THESISiii.dbo.FNHA FNHA3
)
SELECT
    P1.[FNHA 1 Total Years],
    P3.[FNHA 3 Total Years],
    P1.[FNHA 1 Total Years] - P3.[FNHA 3 Total Years] AS 'Difference in Total Years'
FROM Period1 P1
CROSS JOIN Period3 P3;